module decoder_cmd_thumb(
    code,
    adc_rd_rn,
    add_rd_rn_imm3,
    add_rd_imm8,
    add_rd_rn_rm,
    add_rd16_rn16,
    add_rd_pc_imm8,
    add_rd_sp_imm8,
    add_sp_imm7,
    and_rd_rn,
    asr_rd_rn_imm5,
    asr_rd_rs,
    bc_s8,
    b_imm11,
    bic_rd_rn,
    bkpt_imm8,
    bl_imm11,
    blx_rn,
    bx_rn,
    cmn_rn_rm,
    cmp_rm_imm8,
    cmp_rn_rm,
    cmp_rn16_rm16,
    eor_rd_rn,
    ldm,
    ldr_rd_rnimm5,
    ldr_rd_rnrm,
    ldr_rd_pcimm5,
    ldr_rd_spimm8,
    ldrb_rd_rnimm5,
    ldrv_rd_rnrm,
    ldrh_rd_rnimm5,
    ldrh_rd_rnrm,
    ldrsb_rd_rnrm,
    ldrsh_rd_rnrm,
    lsl_rd_rn_imm5,
    lsl_rd_rn,
    lsr_rd_rn_imm5,
    lsl_rd_rn,
    mov_rd_imm8,
    mov_rd_rn,
    mov_rd_rn,
    mul_rd_rn,
    mvn_rd_rn,
    neg_rd_rn,
    orr_rd_rn,
    pop,
    push,
    ror_rd_rn,
    sbc_rd_rn,
    stm,
    str_rd_rnimm5,
    str_rd_rnrm,
    str_rd_spimm8,
    strb_rd_rnimm5,
    strb_rd_rnrm,
    strh_rd_rnimm5,
    strh_rd_rnrm,
    sub_rd_rn_imm3,
    sub_rd_imm8,
    sub_rd_rn_rm,
    sub_sp_imm7,
    swi_imm8,
    tst_rn_rm，
    rd,
    rn,
    rm
);









// command
output  adc_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0001_01   );
output  add_rd_rn_imm3  = ( thumb_code[15: 9] ==  7'b0001_110       );
output  add_rd_imm8     = ( thumb_code[15:11] ==  5'b0011_0         );
output  add_rd_rn_rm    = ( thumb_code[15: 9] ==  7'b0001_100       );
output  add_rd16_rn16   = ( thumb_code[15: 8] ==  8'b0100_0100      );
output  add_rd_pc_imm8  = ( thumb_code[15:11] ==  5'b1010_0         );
output  add_rd_sp_imm8  = ( thumb_code[15:11] ==  5'b1010_1         );
output  add_sp_imm7     = ( thumb_code[15: 7] ==  9'b1011_0000_0    );
output  and_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0000_00   );
output  asr_rd_rn_imm5  = ( thumb_code[15:11] ==  5'b0001_0         );
output  asr_rd_rs       = ( thumb_code[15: 6] == 10'b0100_0001_00   );
output  bc_s8           = ( thumb_code[15:12] ==  4'b1101           );
output  b_imm11         = ( thumb_code[15:11] ==  5'b1110_0         );
output  bic_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0011_10   );
output  bkpt_imm8       = ( thumb_code[15: 8] ==  8'b1011_1110      );
output  bl_imm11        = ( thumb_code[15:13] ==  3'b111            );
output  blx_rn          = ( thumb_code[15: 6] == 10'b0100_0000_00   );
output  bx_rn           = ( thumb_code[15:11] ==  5'b0001_0         );
output  cmn_rn_rm       = ( thumb_code[15: 6] == 10'b0100_0001_00   );
output  cmp_rm_imm8     = ( thumb_code[15:11] ==  5'b0010_1         );
output  cmp_rn_rm       = ( thumb_code[15: 6] == 10'b0100_0010_10   );
output  cmp_rn16_rm16   = ( thumb_code[15: 8] ==  8'b0100_0101      );
output  eor_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0000_01   );
output  ldm             = ( thumb_code[15:11] ==  5'b1100_1         );
output  ldr_rd_rnimm5   = ( thumb_code[15:11] ==  5'b0110_1         );
output  ldr_rd_rnrm     = ( thumb_code[15: 9] ==  7'b0101_100       );
output  ldr_rd_pcimm5   = ( thumb_code[15:11] ==  5'b0100_1         );
output  ldr_rd_spimm8   = ( thumb_code[15:11] ==  5'b1001_1         );
output  ldrb_rd_rnimm5  = ( thumb_code[15:11] ==  5'b0111_1         );
output  ldrv_rd_rnrm    = ( thumb_code[15: 9] ==  7'b0101_110       );
output  ldrh_rd_rnimm5  = ( thumb_code[15:11] ==  5'b1000_1         );
output  ldrh_rd_rnrm    = ( thumb_code[15: 9] ==  7'b0101_101       );
output  ldrsb_rd_rnrm   = ( thumb_code[15: 9] ==  7'b0101_011       );
output  ldrsh_rd_rnrm   = ( thumb_code[15: 9] ==  7'b0101_111       );
output  lsl_rd_rn_imm5  = ( thumb_code[15:11] ==  5'b0000_0         );
output  lsl_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0000_10   );
output  lsr_rd_rn_imm5  = ( thumb_code[15:11] ==  5'b0000_1         );
output  lsl_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0000_11   );
output  mov_rd_imm8     = ( thumb_code[15:11] ==  5'b0010_0         );
output  mov_rd_rn       = ( thumb_code[15: 6] == 10'b0001_1100_00   );
output  mov_rd_rn       = ( thumb_code[15: 8] ==  8'b0100_0110      );
output  mul_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0011_01   );
output  mvn_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0011_11   );
output  neg_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0010_01   );
output  orr_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0011_00   );
output  pop             = ( thumb_code[15:12] ==  4'b1011           );
output  push            = ( thumb_code[15:12] ==  4'b1011           );
output  ror_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0001_11   );
output  sbc_rd_rn       = ( thumb_code[15: 6] == 10'b0100_0001_10   );
output  stm             = ( thumb_code[15:11] ==  5'b1100_0         );
output  str_rd_rnimm5   = ( thumb_code[15:11] ==  5'b0110_0         );
output  str_rd_rnrm     = ( thumb_code[15: 9] ==  7'b0101_000       );
output  str_rd_spimm8   = ( thumb_code[15:11] ==  5'b1001_0         );
output  strb_rd_rnimm5  = ( thumb_code[15:11] ==  5'b0111_0         );
output  strb_rd_rnrm    = ( thumb_code[15: 9] ==  7'b0101_010       );
output  strh_rd_rnimm5  = ( thumb_code[15:11] ==  5'b1000_0         );
output  strh_rd_rnrm    = ( thumb_code[15: 9] ==  7'b0101_001       );
output  sub_rd_rn_imm3  = ( thumb_code[15: 9] ==  7'b0001_111       );
output  sub_rd_imm8     = ( thumb_code[15:11] ==  5'b0011_1         );
output  sub_rd_rn_rm    = ( thumb_code[15: 9] ==  7'b0001_101       );
output  sub_sp_imm7     = ( thumb_code[15: 7] ==  9'b1011_0000_1    );
output  swi_imm8        = ( thumb_code[15: 8] ==  8'b1101_1111      );
output  tst_rn_rm       = ( thumb_code[15: 6] == 10'b0100_0010_00   );

output reg  [ 3: 0] rd, rn, rm;













endmodule 