            .ORG    3000H 


            LD      HL,0X08C0 
            XOR     A 
            LD      (0X08A2),A 
            LD      (0X08A0),HL 
            LD      HL,(0X0898) 
            PUSH    HL 
            CALL    0X318A 
            LD      B,0X20 
            CALL    0X31B9 
            LD      A,0XC5 
            LD      (0X08A0),A 
            POP     HL 
            LD      A,(HL) 
            PUSH    HL 
            LD      D,0X01 
            CALL    0X351D 
            POP     HL 
            JR      NC,0X302E 
            CALL    0X3031 
            LD      C,(HL) 
            LD      A,(HL) 
            CALL    NC,0X340E 
            JP      0X359E 
            CP      0X40 
            JR      C,0X304D 
            CP      0XC0 
            JR      C,0X304F 
            CP      0XCB 
            JP      Z,0X31DE 
            LD      C,0X00 
            CP      0XDD 
            JR      Z,0X3049 
            CP      0XFD 
            JR      NZ,0X304D 
            INC     C 
            INC     C 
            JP      0X30D7 
            OR      A 
            RET      
            PUSH    AF 
            CALL    0X3055 
            JR      0X305A 
            LD      B,0X01 
            JP      0X31FF 
            POP     AF 
            CP      0X80 
            JR      NC,0X3073 
            PUSH    AF 
            CALL    0X3205 
            POP     AF 
            CALL    0X31AC 
            PUSH    AF 
            CALL    0X3106 
            CALL    0X3164 
            POP     AF 
            LD      C,A 
            JP      0X3107 
            AND     0X3F 
            CALL    0X31AC 
            PUSH    AF 
            LD      A,0X86 
            ADD     A,C 
            ADD     A,C 
            ADD     A,C 
            CALL    0X3207 
            CALL    0X3086 
            JR      0X3092 
            CALL    0X317B 
            RET     NZ 
            LD      C,0X07 
            CALL    0X310B 
            JP      0X3164 
            POP     AF 
            LD      C,A 
            JR      0X3106 
            CP      0X40 
            JR      NC,0X30B0 
            CALL    0X31AC 
            PUSH    AF 
            LD      A,C 
            CP      0X07 
            JR      NZ,0X30A4 
            DEC     C 
            LD      A,0X9E 
            ADD     A,C 
            ADD     A,C 
            ADD     A,C 
            CALL    0X3207 
            POP     AF 
            LD      C,A 
            JR      0X3106 
            SUB     0X40 
            PUSH    AF 
            LD      B,0XB3 
            CP      0X40 
            JR      C,0X30C1 
            LD      B,0XB6 
            CP      0X80 
            JR      C,0X30C1 
            LD      B,0XB9 
            LD      A,B 
            CALL    0X3207 
            POP     AF 
            AND     0X3F 
            CALL    0X31AC 
            PUSH    AF 
            LD      A,C 
            CALL    0X319A 
            CALL    0X3164 
            POP     AF 
            LD      C,A 
            JR      0X3106 
            LD      HL,(0X0898) 
            INC     HL 
            LD      A,(HL) 
            CP      0XCB 
            JR      Z,0X30EA 
            CP      0XBF 
            DEC     HL 
            RET     NC 
            CP      0X40 
            JR      NC,0X30ED 
            AND     A 
            RET      
            SET     7,C 
            INC     HL 
            INC     HL 
            LD      A,(HL) 
            PUSH    AF 
            LD      B,0X04 
            LD      A,C 
            LD      (0X08A2),A 
            BIT     7,C 
            JR      NZ,0X30FB 
            DEC     B 
            CALL    0X31FF 
            POP     AF 
            BIT     7,C 
            JR      NZ,0X3096 
            JP      0X305B 
            LD      A,C 
            CP      0X06 
            JR      Z,0X3112 
            LD      A,0X01 
            LD      HL,0X3783 
            JR      0X3145 
            LD      A,(0X08A2) 
            OR      A 
            JR      NZ,0X311E 
            LD      C,0X08 
            LD      A,0X04 
            JR      0X310D 
            PUSH    AF 
            RRA      
            LD      C,0X0C 
            JR      C,0X3126 
            LD      C,0X13 
            LD      A,0X07 
            CALL    0X310D 
            POP     AF 
            RLA      
            LD      DE,(0X0898) 
            JR      NC,0X3134 
            DEC     DE 
            LD      A,(0X08A0) 
            SUB     0X03 
            LD      (0X08A0),A 
            LD      A,(DE) 
            CALL    0X3191 
            INC     HL 
            LD      (0X08A0),HL 
            RET      
            LD      DE,(0X08A0) 
            ADD     HL,BC 
            LD      C,A 
            LDIR     
            LD      (0X08A0),DE 
            SCF      
            RET      
            LD      H,0X37 
            LD      L,A 
            LD      DE,0XFE9E 
            ADD     HL,DE 
            EX      DE,HL 
            JR      0X3169 
            LD      HL,0X08D2 
            LD      (0X08A0),HL 
            RET      
            LD      BC,0X0006 
            JR      0X310B 
            LD      HL,(0X08A0) 
            LD      A,(DE) 
            LD      (HL),A 
            RES     7,(HL) 
            INC     HL 
            LD      (0X08A0),HL 
            INC     DE 
            OR      A 
            JP      M,0X31B7 
            JR      0X3169 
            LD      A,C 
            CP      0X04 
            JR      C,0X3182 
            OR      A 
            RET      
            CP      0X02 
            JR      NZ,0X3188 
            DEC     A 
            RET      
            XOR     A 
            RET      
            PUSH    HL 
            LD      A,H 
            CALL    0X3191 
            POP     HL 
            LD      A,L 
            PUSH    AF 
            RRA      
            RRA      
            RRA      
            RRA      
            CALL    0X319A 
            POP     AF 
            AND     0X0F 
            ADD     A,0X90 
            DAA      
            ADC     A,0X40 
            DAA      
            LD      HL,(0X08A0) 
            LD      (HL),A 
            INC     HL 
            LD      (0X08A0),HL 
            SCF      
            RET      
            PUSH    AF 
            AND     0X38 
            RRA      
            RRA      
            RRA      
            LD      C,A 
            POP     AF 
            AND     0X07 
            RET      
            LD      B,0X01 
            LD      A,0X20 
            LD      HL,(0X08A0) 
            LD      (HL),A 
            INC     HL 
            DJNZ    0X31BE 
            LD      (0X08A0),HL 
            RET      
            LD      DE,(0X0898) 
            PUSH    BC 
            LD      A,(DE) 
            PUSH    AF 
            CALL    0X3191 
            CALL    0X31B7 
            POP     AF 
            INC     DE 
            POP     BC 
            DJNZ    0X31CA 
            DEC     DE 
            LD      (0X0898),DE 
            RET      
            LD      B,0X02 
            CALL    0X31C6 
            CALL    0X315D 
            JP      0X3096 
            AND     0XCF 
            CP      0X01 
            JR      NZ,0X3236 
            CALL    0X31FD 
            CALL    0X3205 
            CALL    0X320A 
            CALL    0X3164 
            JR      0X3221 
            LD      B,0X03 
            CALL    0X31C6 
            JP      0X315D 
            LD      A,0X83 
            JP      0X3153 
            LD      A,C 
            PUSH    AF 
            AND     0X30 
            CALL    0X35A6 
            ADD     A,0X1A 
            LD      B,0X00 
            LD      C,A 
            LD      A,0X02 
            LD      HL,0X3783 
            CALL    0X3145 
            POP     AF 
            LD      C,A 
            RET      
            LD      HL,(0X0898) 
            LD      A,(HL) 
            PUSH    HL 
            CALL    0X3191 
            POP     HL 
            DEC     HL 
            LD      A,(HL) 
            PUSH    HL 
            CALL    0X3191 
            POP     HL 
            INC     HL 
            LD      (0X0898),HL 
            RET      
            AND     0XC7 
            CP      0X06 
            JR      NZ,0X3254 
            LD      B,0X02 
            CALL    0X32BE 
            LD      A,C 
            CALL    0X31AC 
            LD      B,0X00 
            CALL    0X35E7 
            CALL    0X3164 
            LD      HL,(0X0898) 
            LD      A,(HL) 
            JP      0X3191 
            LD      A,C 
            PUSH    AF 
            AND     0XEF 
            CP      0X0A 
            JR      NZ,0X327B 
            LD      B,0X01 
            CALL    0X32BE 
            LD      A,C 
            LD      BC,0X0007 
            CALL    0X310B 
            CALL    0X3164 
            LD      BC,0X0008 
            CALL    0X310B 
            POP     AF 
            CALL    0X320B 
            LD      BC,0X000B 
            JP      0X310B 
            CP      0X02 
            JR      NZ,0X3290 
            LD      B,0X01 
            CALL    0X32BE 
            CALL    0X3603 
            CALL    0X3164 
            LD      BC,0X0007 
            JP      0X310B 
            CP      0X22 
            JR      NZ,0X32C4 
            LD      B,0X03 
            CALL    0X32BE 
            CALL    0X32AF 
            CALL    0X3164 
            POP     AF 
            BIT     4,A 
            JR      NZ,0X32A7 
            JP      0X35CD 
            LD      A,0X01 
            LD      BC,0X0007 
            JP      0X310D 
            LD      BC,0X0008 
            CALL    0X310B 
            CALL    0X3221 
            LD      BC,0X000B 
            JP      0X310B 
            CALL    0X31FF 
            JP      0X3205 
            CP      0X2A 
            JR      NZ,0X32D6 
            LD      B,0X03 
            CALL    0X32BE 
            POP     AF 
            CALL    0X32A0 
            CALL    0X3164 
            JR      0X32AF 
            AND     0XCF 
            CP      0X03 
            JR      NZ,0X32EB 
            CALL    0X32E3 
            POP     AF 
            JP      0X320B 
            CALL    0X3055 
            LD      A,0XBC 
            JP      0X3207 
            CP      0X0B 
            JR      NZ,0X32FB 
            CALL    0X32F6 
            POP     AF 
            JP      0X320B 
            LD      A,0XBF 
            JP      0X3511 
            AND     0XC7 
            CP      0X04 
            JR      NZ,0X330B 
            CALL    0X32E3 
            POP     AF 
            CALL    0X31AC 
            JP      0X3106 
            CP      0X05 
            JR      NZ,0X3315 
            CALL    0X32F6 
            POP     AF 
            JR      0X3305 
            LD      A,C 
            AND     0XCF 
            CP      0X09 
            JR      NZ,0X332B 
            LD      A,0X86 
            CALL    0X3511 
            CALL    0X32A4 
            CALL    0X3164 
            POP     AF 
            JP      0X320B 
            POP     AF 
            CP      0X10 
            JR      NZ,0X334B 
            LD      A,0XD9 
            PUSH    AF 
            LD      B,0X02 
            CALL    0X31FF 
            POP     AF 
            CALL    0X3207 
            JP      0X35F3 
            INC     HL 
            LD      (0X08A0),HL 
            RET      
            LD      (HL),0X41 
            INC     HL 
            LD      (HL),0X46 
            INC     HL 
            RET      
            CP      0X18 
            JR      NZ,0X3353 
            LD      A,0XD5 
            JR      0X3332 
            LD      A,C 
            AND     0XC7 
            OR      A 
            JR      NZ,0X3377 
            LD      A,C 
            PUSH    AF 
            LD      B,0X02 
            CALL    0X31FF 
            LD      A,0XD5 
            CALL    0X3207 
            POP     AF 
            CALL    0X336C 
            JP      0X35F3 
            AND     0X18 
            RRA      
            RRA      
            RRA      
            ADD     A,A 
            ADD     A,0XDD 
            JP      0X3207 
            LD      A,C 
            CP      0XC3 
            JR      Z,0X3391 
            CP      0XCD 
            JR      Z,0X338D 
            CP      0XC9 
            JR      NZ,0X33A7 
            LD      A,0XE5 
            JP      0X3511 
            AND     0X38 
            JR      0X336E 
            LD      A,0XC8 
            JR      0X3393 
            LD      A,0XCC 
            LD      B,0X03 
            PUSH    AF 
            CALL    0X31FF 
            POP     AF 
            CP      0XA6 
            JR      NZ,0X33A1 
            JP      0X3207 
            CALL    0X32E8 
            JP      0X3221 
            AND     0XC7 
            CP      0XC0 
            JR      NZ,0X33C5 
            LD      A,0XC5 
            LD      B,0X01 
            CALL    0X33B8 
            DEC     HL 
            LD      (HL),0X20 
            RET      
            PUSH    BC 
            PUSH    AF 
            CALL    0X31FF 
            POP     AF 
            CALL    0X32E8 
            POP     BC 
            LD      A,C 
            JR      0X3389 
            LD      A,C 
            AND     0XC7 
            CP      0XC4 
            JR      NZ,0X33D6 
            LD      A,0XC8 
            LD      B,0X03 
            CALL    0X33B8 
            JP      0X3221 
            CP      0XC2 
            JR      NZ,0X33DE 
            LD      A,0XCC 
            JR      0X33CE 
            LD      A,C 
            AND     0XCF 
            CP      0XC1 
            JR      NZ,0X33E9 
            LD      A,0XCE 
            JR      0X33EE 
            CP      0XC5 
            RET     NZ 
            LD      A,0XD1 
            PUSH    BC 
            PUSH    AF 
            CALL    0X3055 
            POP     AF 
            CALL    0X32E8 
            POP     BC 
            LD      A,C 
            CP      0XF1 
            JR      Z,0X3401 
            CP      0XF5 
            JR      NZ,0X340B 
            LD      (HL),0X41 
            INC     HL 
            LD      (HL),0X46 
            INC     HL 
            LD      (0X08A0),HL 
            RET      
            JP      0X320B 
            AND     0XC7 
            CP      0XC7 
            JR      NZ,0X3421 
            LD      A,C 
            PUSH    AF 
            LD      A,0XC2 
            CALL    0X3511 
            POP     AF 
            AND     0X38 
            JP      0X3191 
            AND     0XC6 
            CP      0XC6 
            LD      A,C 
            JR      NZ,0X3440 
            XOR     A 
            CALL    0X34F7 
            LD      A,C 
            PUSH    BC 
            CALL    0X31AC 
            LD      A,0X86 
            ADD     A,C 
            ADD     A,C 
            ADD     A,C 
            CALL    0X3207 
            CALL    0X3086 
            POP     BC 
            JP      0X324D 
            CP      0XED 
            JP      NZ,0X34E8 
            LD      HL,(0X0898) 
            INC     HL 
            LD      A,(HL) 
            LD      C,A 
            AND     0XC7 
            CP      0X43 
            JR      NZ,0X3471 
            LD      B,0X04 
            CALL    0X31FF 
            CALL    0X3205 
            BIT     3,C 
            JR      NZ,0X3468 
            PUSH    BC 
            CALL    0X32AF 
            CALL    0X3164 
            POP     BC 
            JP      0X320A 
            CALL    0X320A 
            CALL    0X3164 
            JP      0X32AF 
            LD      B,0X02 
            JR      0X34DF 
            LD      A,C 
            AND     0XC7 
            CP      0X40 
            JR      NZ,0X3496 
            PUSH    BC 
            LD      A,0XF0 
            CALL    0X3207 
            POP     BC 
            LD      A,C 
            CALL    0X31AC 
            LD      A,C 
            CALL    0X310B 
            CALL    0X3164 
            LD      BC,0X0022 
            LD      A,0X03 
            JP      0X310D 
            CP      0X41 
            JR      NZ,0X34AF 
            PUSH    BC 
            LD      A,0XED 
            CALL    0X3207 
            CALL    0X348E 
            CALL    0X3164 
            POP     BC 
            LD      A,C 
            CALL    0X31AC 
            LD      A,C 
            JP      0X310B 
            CP      0X42 
            JR      NZ,0X34E8 
            PUSH    BC 
            LD      A,C 
            BIT     3,A 
            JR      NZ,0X34C0 
            LD      A,0X8F 
            CALL    0X3207 
            JR      0X34C5 
            LD      A,0X89 
            CALL    0X3207 
            CALL    0X32A4 
            CALL    0X3164 
            POP     BC 
            JP      0X320A 
            LD      B,0X1C 
            LD      HL,(0X0898) 
            INC     HL 
            LD      A,(HL) 
            LD      HL,0X36F8 
            LD      B,0X1C 
            LD      D,0X02 
            JR      0X3522 
            AND     0X84 
            JR      NZ,0X34CF 
            CALL    0X31FF 
            JR      0X3475 
            CP      0XD3 
            JR      NZ,0X3502 
            LD      A,0XED 
            CALL    0X34F7 
            CALL    0X34FB 
            JP      0X3287 
            LD      B,0X02 
            JR      0X3513 
            LD      HL,(0X0898) 
            LD      A,(HL) 
            JP      0X3191 
            CP      0XDB 
            JR      NZ,0X354B 
            LD      A,0XF0 
            CALL    0X34F7 
            LD      C,0X00 
            PUSH    BC 
            JP      0X3439 
            LD      B,0X01 
            PUSH    AF 
            CALL    0X31FF 
            POP     AF 
            OR      A 
            JP      NZ,0X3207 
            RET      
            LD      B,0X13 
            LD      HL,0X3690 
            CP      (HL) 
            JR      Z,0X352F 
            INC     HL 
            BIT     7,(HL) 
            JR      Z,0X3525 
            INC     HL 
            DJNZ    0X3522 
            SCF      
            RET      
            PUSH    HL 
            LD      B,D 
            CALL    0X31FF 
            POP     HL 
            LD      DE,(0X08A0) 
            INC     HL 
            LD      A,(HL) 
            LD      (DE),A 
            INC     DE 
            BIT     7,A 
            JR      Z,0X3539 
            EX      DE,HL 
            DEC     HL 
            RES     7,(HL) 
            INC     HL 
            LD      (0X08A0),HL 
            OR      A 
            RET      
            LD      HL,(0X08A0) 
            CP      0XDD 
            JR      NZ,0X3559 
            LD      (HL),0X44 
            INC     HL 
            LD      A,0X11 
            JR      0X3562 
            CP      0XFD 
            JR      NZ,0X3590 
            LD      (HL),0X46 
            INC     HL 
            LD      A,0X22 
            LD      (0X08A2),A 
            LD      (HL),0X44 
            INC     HL 
            INC     HL 
            LD      (0X08A0),HL 
            LD      HL,(0X0898) 
            INC     HL 
            LD      C,(HL) 
            LD      A,(HL) 
            LD      (0X0898),HL 
            CP      0X36 
            PUSH    HL 
            CALL    Z,0X31FD 
            LD      A,C 
            AND     0XFE 
            CP      0X34 
            LD      B,0X02 
            CALL    Z,0X31FF 
            POP     HL 
            LD      A,(HL) 
            CP      0XE9 
            JR      Z,0X358D 
            CP      0XE3 
            JR      Z,0X360A 
            LD      A,C 
            JP      0X31E9 
            LD      HL,(0X0898) 
            DEC     HL 
            DEC     HL 
            LD      (0X0898),HL 
            CALL    0X3106 
            LD      HL,(0X0898) 
            INC     HL 
            LD      (0X0898),HL 
            RET      
            RRA      
            RRA      
            RRA      
            CP      0X04 
            RET     NZ 
            LD      A,(0X08A2) 
            RRCA     
            JR      NC,0X35B5 
            LD      A,0XF3 
            RET      
            RRCA     
            JR      NC,0X35BB 
            LD      A,0XFA 
            RET      
            LD      A,0X04 
            RET      
            LD      BC,0X0008 
            CALL    0X310B 
            CALL    0X35CD 
            LD      BC,0X000B 
            JP      0X310B 
            LD      A,(0X08A2) 
            LD      B,0X00 
            RRCA     
            JR      NC,0X35D9 
            LD      C,0X0D 
            JR      0X35E2 
            RRCA     
            JR      NC,0X35E0 
            LD      C,0X14 
            JR      0X35E2 
            LD      C,0X04 
            LD      A,0X02 
            JP      0X310D 
            LD      A,(0X08A2) 
            RRCA     
            JR      C,0X3593 
            RRCA     
            JR      C,0X35EB 
            JP      0X3106 
            LD      HL,(0X0898) 
            LD      E,(HL) 
            XOR     A 
            BIT     7,E 
            JR      Z,0X35FD 
            CPL      
            LD      D,A 
            INC     HL 
            ADD     HL,DE 
            JP      0X318A 
            POP     HL 
            POP     AF 
            PUSH    HL 
            PUSH    AF 
            JP      0X326B 
            LD      A,C 
            CALL    0X351D 
            DEC     HL 
            LD      A,(HL) 
            CP      0X48 
            JR      NZ,0X360E 
            LD      (HL),0X49 
            INC     HL 
            LD      (HL),0X58 
            LD      A,(0X08A2) 
            RRCA     
            RET     C 
            INC     (HL) 
            RET      
            LD      C,C 
            LD      C,H 
            CALL    NZ,0X4100 
            LD      B,H 
            CALL    NZ,0X4441 
            JP      0X5553 
            JP      NZ,0X4253 
            JP      0X4E41 
            CALL    NZ,0X4F58 
            JP      NC,0XD24F 
            NOP      
            LD      B,E 
            RET     NC 
            NOP      
            LD      D,D 
            LD      C,H 
            JP      0X5252 
            JP      0XCC52 
            NOP      
            LD      D,D 
            JP      NC,0X5300 
            LD      C,H 
            POP     BC 
            LD      D,E 
            LD      D,D 
            POP     BC 
            LD      D,E 
            LD      D,D 
            CALL    Z,0X4942 
            CALL    NC,0X4552 
            OUT     (0X53),A 
            LD      B,L 
            CALL    NC,0X4E49 
            JP      0X4544 
            JP      0X5352 
            CALL    NC,0X4552 
            CALL    NC,0X4143 
            LD      C,H 
            CALL    Z,0XD04A 
            LD      D,B 
            LD      C,A 
            RET     NC 
            LD      D,B 
            LD      D,L 
            LD      D,E 
            RET     Z 
            LD      C,D 
            JP      NC,0XD845 
            LD      B,H 
            LD      C,D 
            LD      C,(HL) 
            JP      C,0XDA4E 
            JP      C,0X4E20 
            JP      0X00C3 
            LD      D,B 
            RST     0X08 
            LD      D,B 
            PUSH    BC 
            RET     NC 
            NOP      
            CALL    0X4F00 
            LD      D,L 
            CALL    NC,0XCE49 
            NOP      
            LD      C,(HL) 
            LD      C,A 
            RET     NC 
            RLCA     
            LD      D,D 
            LD      C,H 
            LD      B,E 
            POP     BC 
            EX      AF,AF' 
            LD      B,L 
            LD      E,B 
            JR      NZ,0X36DF 
            LD      B,(HL) 
            INC     L 
            LD      B,C 
            LD      B,(HL) 
            AND     A 
            RRCA     
            LD      D,D 
            LD      D,D 
            LD      B,E 
            POP     BC 
            RLA      
            LD      D,D 
            LD      C,H 
            POP     BC 
            RRA      
            LD      D,D 
            LD      D,D 
            POP     BC 
            DAA      
            LD      B,H 
            LD      B,C 
            POP     BC 
            CPL      
            LD      B,E 
            LD      D,B 
            CALL    Z,0X5337 
            LD      B,E 
            ADD     A,0X3F 
            LD      B,E 
            LD      B,E 
            ADD     A,0X76 
            LD      C,B 
            LD      B,C 
            LD      C,H 
            CALL    NC,0X52C9 
            LD      B,L 
            CALL    NC,0X45D9 
            LD      E,B 
            RET     C 
            EX      (SP),HL 
            LD      B,L 
            LD      E,B 
            JR      NZ,0X36FA 
            LD      D,E 
            LD      D,B 
            ADD     HL,HL 
            INC     L 
            LD      C,B 
            CALL    Z,0X4AE9 
            LD      D,B 
            JR      NZ,0X3705 
            LD      C,B 
            LD      C,H 
            XOR     C 
            EX      DE,HL 
            LD      B,L 
            LD      E,B 
            JR      NZ,0X3729 
            LD      B,L 
            INC     L 
            LD      C,B 
            CALL    Z,0X44F3 
            RET      
            LD      SP,HL 
            LD      C,H 
            LD      B,H 
            JR      NZ,0X3744 
            LD      D,B 
            INC     L 
            LD      C,B 
            CALL    Z,0X45FB 
            RET      
            LD      B,H 
            LD      C,(HL) 
            LD      B,L 
            RST     0X00 
            LD      B,L 
            LD      D,D 
            LD      B,L 
            LD      D,H 
            ADC     A,0X46 
            LD      C,C 
            LD      C,L 
            JR      NZ,0X36B6 
            LD      B,A 
            LD      C,H 
            LD      B,H 
            JR      NZ,0X3754 
            INC     L 
            POP     BC 
            LD      C,L 
            LD      D,D 
            LD      B,L 
            LD      D,H 
            RET      
            LD      C,A 
            LD      C,H 
            LD      B,H 
            JR      NZ,0X3769 
            INC     L 
            POP     BC 
            LD      D,(HL) 
            LD      C,C 
            LD      C,L 
            JR      NZ,0X36CF 
            LD      D,A 
            LD      C,H 
            LD      B,H 
            JR      NZ,0X3764 
            INC     L 
            RET      
            LD      E,(HL) 
            LD      C,C 
            LD      C,L 
            JR      NZ,0X36DC 
            LD      E,A 
            LD      C,H 
            LD      B,H 
            JR      NZ,0X3770 
            INC     L 
            JP      NC,0X5267 
            LD      D,D 
            CALL    NZ,0X526F 
            LD      C,H 
            CALL    NZ,0X4CA0 
            LD      B,H 
            RET      
            AND     C 
            LD      B,E 
            LD      D,B 
            RET      
            AND     D 
            LD      C,C 
            LD      C,(HL) 
            RET      
            AND     E 
            LD      C,A 
            LD      D,L 
            LD      D,H 
            RET      
            XOR     B 
            LD      C,H 
            LD      B,H 
            CALL    NZ,0X43A9 
            LD      D,B 
            CALL    NZ,0X49AA 
            LD      C,(HL) 
            CALL    NZ,0X4FAB 
            LD      D,L 
            LD      D,H 
            CALL    NZ,0X4CB0 
            LD      B,H 
            LD      C,C 
            JP      NC,0X43B1 
            LD      D,B 
            LD      C,C 
            JP      NC,0X49B2 
            LD      C,(HL) 
            LD      C,C 
            JP      NC,0X4FB3 
            LD      D,H 
            LD      C,C 
            JP      NC,0X4CB8 
            LD      B,H 
            LD      B,H 
            JP      NC,0X43B9 
            LD      D,B 
            LD      B,H 
            JP      NC,0X49BA 
            LD      C,(HL) 
            LD      B,H 
            JP      NC,0X4FBB 
            LD      D,H 
            LD      B,H 
            JP      NC,0X4342 
            LD      B,H 
            LD      B,L 
            LD      C,B 
            LD      C,H 
            INC     L 
            LD      B,C 
            JR      Z,0X37D5 
            LD      C,H 
            ADD     HL,HL 
            JR      Z,0X37DA 
            LD      E,B 
            DEC     HL 
            JR      NZ,0X37B4 
            ADD     HL,HL 
            JR      Z,0X37E1 
            LD      E,C 
            DEC     HL 
            JR      NZ,0X37BB 
            ADD     HL,HL 
            LD      B,D 
            LD      B,E 
            LD      B,H 
            LD      B,L 
            LD      C,B 
            LD      C,H 
            LD      D,E 
            LD      D,B 
            JR      Z,0X37EA 
            ADD     HL,HL 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            RST     0X38 
            LD      HL,0X37EB 
            LD      DE,0X0880 
            LD      BC,0X000A 
            LDIR     
            JP      0X0044 
            CALL    0X3000 
            NOP 
            LD      A,0X01 
            OUT     (0X04),A 
            LD      HL,0X08C0 
            LD      B,0X10 
            NOP 
            LD      A,(HL) 
            OUT     (0X84),A 
            INC     HL 
            DJNZ    0X37CB 
            NOP 
            LD      A,0XC3 
            OUT     (0X04),A 
            LD      B,0X10 
            LD      HL,0X08D2 
            NOP 
            LD      A,(HL) 
            OUT     (0X84),A 
            INC     HL 
            DJNZ    0X37DC 
            HALT     
            JR      0X37BE 
            IN      A,(0X04) 
            BIT     7,A 
            JR      NZ,0X37E6 
            RET      
            RST     0X30 
            SCF      
            SBC     A,C 
            EX      AF,AF' 
            NOP      
            LD      BC,0X37BE 
            RST     0X38 
            RST     0X38 
            INC     B 
            AND     A 
            INC     B 
            RST     0X00 
            RET      
            RET      
            LD      B,0X06 
            LD      A,(BC) 
