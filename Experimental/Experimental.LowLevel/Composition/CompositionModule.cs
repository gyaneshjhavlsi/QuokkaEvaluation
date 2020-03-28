﻿using Quokka.RTL;
using System;

namespace QuokkaTests.Experimental
{
    public class CompositionInputs
    {
        public bool IsEnabled = true;
    }

    public class CompositionModule : RTLCombinationalModule<CompositionInputs>
    {
        public EmitterModule Emitter = new EmitterModule();
        public TransmitterModule Transmitter = new TransmitterModule();
        public ReceiverModule Receiver = new ReceiverModule();

        public bool HasData => Receiver.HasData;
        public byte Data => Receiver.Data;

        public override void Schedule(Func<CompositionInputs> inputsFactory)
        {
            base.Schedule(inputsFactory);

            Emitter.Schedule(() => new EmitterInputs()
                {
                    IsEnabled = Inputs.IsEnabled,
                    Ack = Transmitter.IsReady
                });

            Transmitter.Schedule(() => new TransmitterInputs()
                {
                    Trigger = Emitter.HasData,
                    Data = Emitter.Data,
                    Ack = Receiver.HasData
               });

            Receiver.Schedule(() => new ReceiverInputs()
                {
                    IsValid = Transmitter.IsTransmitting,
                    Bit = Transmitter.Bit,
                    Ack = true
                });
        }
    }
}
