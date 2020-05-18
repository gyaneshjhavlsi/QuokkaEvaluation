﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using QRV32.CPU;
using Quokka.RTL;
using Quokka.RTL.Simulator;
using System.Collections.Generic;
using System.Linq;

namespace QRV32.Tests
{
    public class RegistersModuleTests<TModule, TState>
        where TModule: IRegistersModule<TState>, new()
        where TState: IRegistersModuleState, new()
    {
        IEnumerable<uint> IncRange => Enumerable.Range(0, 32).Select(i => (uint)i);

        [TestMethod]
        public void FillTest()
        {
            var sim = new RTLSimulator<TModule, RegistersModuleInput>();
            var tl = sim.TopLevel;

            foreach (var idx in IncRange)
            {
                sim.ClockCycle(new RegistersModuleInput() { RD = idx, WE = true, WriteData = idx + 1 });

                if (idx == 0)
                    Assert.AreEqual(idx, tl.State.x[0]);
                else
                    Assert.AreEqual(idx + 1, tl.State.x[idx]);
            }
        }

        [TestMethod]
        public void ReadTest()
        {
            var sim = new RTLSimulator<TModule, RegistersModuleInput>();
            var tl = sim.TopLevel;

            foreach (var idx in IncRange)
            {
                sim.ClockCycle(new RegistersModuleInput() { RD = idx, WE = true, WriteData = idx });
            }

            sim.ClockCycle(new RegistersModuleInput() { Read = true, RS1Addr = 1, RS2Addr = 2 });
            sim.ClockCycle(new RegistersModuleInput() { Read = true, RS1Addr = 1, RS2Addr = 2 });
            sim.ClockCycle(new RegistersModuleInput() { Read = true, RS1Addr = 1, RS2Addr = 2 });


            foreach (var rs1 in IncRange)
            {
                foreach (var rs2 in IncRange)
                {
                    do
                    {
                        sim.ClockCycle(new RegistersModuleInput() { Read = true, RS1Addr = rs1, RS2Addr = rs2 });
                    }
                    while (!tl.Ready);

                    Assert.AreEqual(rs1, tl.RS1);
                    Assert.AreEqual(rs2, tl.RS2);
                }
            }
        }
    }

    [TestClass]
    public class RegistersBlockModuleTests : RegistersModuleTests<RegistersBlockModule, RegistersBlockModuleState>
    {
    }

    [TestClass]
    public class RegistersRAMModuleTests : RegistersModuleTests<RegistersRAMModule, RegistersRAMModuleState>
    {
    }
}
