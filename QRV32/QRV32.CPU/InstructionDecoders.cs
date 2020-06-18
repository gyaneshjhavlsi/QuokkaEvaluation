using Quokka.RTL;
using System;

namespace QRV32.CPU
{
    public class InstructionDecoderInputs
    {
        public uint Instruction;
    }

    public class InstructionDecoderModule : RTLCombinationalModule<InstructionDecoderInputs>
    {
        protected RTLBitArray internalBits => Inputs.Instruction;
        protected RTLBitArray internalITypeImm => new RTLBitArray(internalBits[31, 20]).Signed().Resized(32);
        protected RTLBitArray internalOpCode => internalBits[6, 0];
        protected RTLBitArray internalFunct3 => internalBits[14, 12];

        protected RTLBitArray ZeroU32 => 0;
        public RTLBitArray OpCode => internalOpCode;
        public RTLBitArray RD => internalBits[11, 7];
        public RTLBitArray RS1 => internalBits[19, 15];
        public RTLBitArray RS2 => internalBits[24, 20];
        public RTLBitArray Funct3 => internalFunct3;
        public RTLBitArray Funct7 => internalBits[31, 25];
        public RTLBitArray RTypeImm => new RTLBitArray(internalBits[31, 20]).Signed().Resized(32);
        public RTLBitArray ITypeImm => new RTLBitArray(internalBits[31, 20]).Signed().Resized(32);
        public RTLBitArray STypeImm => new RTLBitArray(internalBits[31, 25], internalBits[11, 7]).Signed().Resized(32);
        public RTLBitArray BTypeImm => new RTLBitArray(internalBits[31], internalBits[7], internalBits[30, 25], internalBits[11, 8], false).Signed().Resized(32);
        public RTLBitArray UTypeImm => new RTLBitArray(internalBits[31, 12], ZeroU32[11, 0]).Signed().Resized(32);
        public RTLBitArray JTypeImm => new RTLBitArray(internalBits[31], internalBits[19, 12], internalBits[20], internalBits[30, 21], false).Signed().Resized(32);

        public RTLBitArray SHAMT => internalITypeImm[4, 0];
        public bool SHARITH => internalITypeImm[10];
        public bool SUB => internalITypeImm[10];

        public OpTypeCodes OpTypeCode => (OpTypeCodes)(byte)internalOpCode;
        public OPIMMCodes OPIMMCode => (OPIMMCodes)(byte)internalFunct3;
        public OPCodes OPCode => (OPCodes)(byte)internalFunct3;
        public BranchTypeCodes BranchTypeCode => (BranchTypeCodes)(byte)internalFunct3;
        public LoadTypeCodes LoadTypeCode => (LoadTypeCodes)(byte)internalFunct3;
        public ECodes ECode => (ECodes)(byte)internalITypeImm;
        public SystemCodes SystemCode => (SystemCodes)(byte)internalFunct3;
        public CSRAddressCodes CSRAddress => (CSRAddressCodes)(ushort)internalBits[31, 20];
    }
}