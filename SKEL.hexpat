struct Header {
    u8 padding0[8];
    u32 boneCount;
    u8 padding1[4];
    
};

struct Matrix {
    u8 padding1[64];
    float rotation11;
    float rotation12;
    float rotation13;
    u32 junk1;
    float rotation21;
    float rotation22;
    float rotation23;
    u32 junk2;
    float rotation31;
    float rotation32;
    float rotation33;
    u32 junk3;
    float position1;
    float position2;
    float position3;
    u32 junk4;
    u8 padding2[8];
    s32 parentIndex;
    u8 padding3[4];
    
};
    
    
    
Header header @ 0x00;
Matrix matrix[header.boneCount] @0x10;