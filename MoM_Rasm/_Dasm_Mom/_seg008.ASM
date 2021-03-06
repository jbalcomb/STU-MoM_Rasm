;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	   Copyright (c) 2009 by Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: AC-7625-2E2D-92			    |
; |				 Valued	Client				    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	AABF5C934234A70885DEA7A0C8B3B5DE

; File Name   :	E:\MoM\IDA\IDA50sigs_20141030\MAGIC.EXE
; Format      :	MS-DOS executable (perhaps overlayed)
; Base Address:	1000h Range: 10000h-3C7E0h Loaded length: 2C7E0h
; Entry	Point :	1000:0
; Overlays: base=0002EFE0, size=0001B0B0, EXEinfo=00023D80
; OS type	  :  MS	DOS
; Application type:  Executable	16bit

include	uni.inc	; see unicode subdir of	ida for	info on	unicode

.386
.model large

include	MAGIC_rprd2.inc



; Segment type:	Pure code
seg008 segment byte public 'CODE' use16
assume cs:seg008
;org 7
assume es:nothing, ss:nothing, ds:dseg,	fs:nothing, gs:nothing


; Attributes: bp-based frame

sub_14787 proc far	; CODE XREF: idk_OVR_LoadLbxHelp:loc_55D4CP
push	bp

loc_14788:
mov	bp, sp

loc_1478A:
mov	ax, idk_OVL_w35A64

loc_1478D:
mov	idl_OVL_w3B19E,	ax
pop	bp
retf			; Return Far from Procedure
sub_14787 endp



; Attributes: bp-based frame

sub_14792 proc far	; CODE XREF: idk_OVR_LoadLbxHelp+523P
push	bp
mov	bp, sp
mov	ax, idl_OVL_w3B19E
mov	idk_OVL_w35A64,	ax
pop	bp
retf			; Return Far from Procedure
sub_14792 endp



; Attributes: bp-based frame

sub_1479D proc far
push	bp

loc_1479E:
mov	bp, sp

loc_147A0:
mov	idk_OVL_w35A64,	100h

loc_147A6:
mov	idl_OVL_w3B19E,	100h

loc_147AC:
pop	bp
retf			; Return Far from Procedure
sub_1479D endp



; Attributes: bp-based frame

; int __cdecl __far EMM_CheckAllocation(int arg_0)
EMM_CheckAllocation proc far
			; CODE XREF: LBX_Terrtype_s472C7+CP
			; LBX_Terrtype_s4763F+CP
			; LBX_Terrtype_s48821+CP
			; LBX_Cityname_s4B973+CP
			; idk_OVR_LoadLbxHelp:loc_55D55P
			; sub_56450:loc_564D7P

arg_0= word ptr	 6

push	bp
mov	bp, sp
push	si
mov	si, [bp+arg_0]
cmp	si, 1030h	; Compare Two Operands
jbe	short loc_147CA	; Jump if Below	or Equal (CF=1 | ZF=1)

loc_147BB:
mov	ax, si
sub	ax, 1130h	; Integer Subtraction
add	ax, 256		; int
push	ax		; argIntAllocationOverage
nop			; No Operation
push	cs
call	near ptr EXIT_AllocationError ;	Call Procedure
pop	cx

loc_147CA:		; CODE XREF: EMM_CheckAllocation+Bj
mov	ax, si
add	ax, 256		; Add
mov	idk_OVL_w35A64,	ax
mov	ax, si
add	ax, 256		; Add
mov	idl_OVL_w3B19E,	ax
mov	ax, offset idk_EmmRsrvExcdErrMsg
add	ax, 256		; Add
jmp	short $+2	; Jump
pop	si
pop	bp
retf			; Return Far from Procedure
EMM_CheckAllocation endp ; sp-analysis failed



; Attributes: bp-based frame

sub_147E5 proc far	; CODE XREF: sub_56450:loc_564E4P

var_2= word ptr	-2
arg_0= word ptr	 6

push	bp

loc_147E6:
mov	bp, sp

loc_147E8:		; Integer Subtraction
sub	sp, 2
push	si

loc_147EC:
mov	si, [bp+arg_0]

loc_147EF:
mov	ax, 4400

loc_147F2:		; Integer Subtraction
sub	ax, idk_OVL_w35A64
cmp	ax, si		; Compare Two Operands
jnb	short loc_1480A	; Jump if Not Below (CF=0)

loc_147FA:
mov	ax, si

loc_147FC:		; Integer Subtraction
sub	ax, 4400

loc_147FF:		; int
add	ax, idk_OVL_w35A64
push	ax		; argIntAllocationOverage
nop			; No Operation
push	cs
call	near ptr EXIT_AllocationError ;	Call Procedure
pop	cx

loc_1480A:		; CODE XREF: sub_147E5+13j
mov	ax, idk_OVL_w35A64

loc_1480D:
mov	[bp+var_2], ax

loc_14810:		; Add
add	idk_OVL_w35A64,	si

loc_14814:
mov	ax, offset idk_EmmRsrvExcdErrMsg

loc_14817:		; Add
add	ax, [bp+var_2]
jmp	short $+2	; Jump
pop	si

loc_1481D:
mov	sp, bp

loc_1481F:
pop	bp

locret_14820:		; Return Far from Procedure
retf
sub_147E5 endp ; sp-analysis failed



; Attributes: noreturn bp-based	frame

; int __fastcall __far EXIT_AllocationError(int, int, int, int argIntAllocationOverage)
EXIT_AllocationError proc far
			; CODE XREF: EMM_CheckAllocation+18p
			; sub_147E5+21p

argIntAllocationOverage= word ptr  6

push	bp		; argConversionBase
mov	bp, sp
mov	ax, offset aNearAllocation ; "Near Allocation too large	by "
push	ax
mov	ax, offset idk_EmmRsrvExcdErrMsg
push	ax		; argDest
call	_strcpy		; argDest,argSrc
pop	cx

loc_14832:
pop	cx

loc_14833:
mov	ax, 10
push	ax

loc_14837:
mov	ax, offset idk_ItoAbuf_w3B204

loc_1483A:		; argPtrCharArr
push	ax

loc_1483B:		; argNumber
push	[bp+argIntAllocationOverage]
call	_itoa		; argNumber,argPtrCharArr,argConversionBase
add	sp, 6		; Add

loc_14846:
mov	ax, offset idk_ItoAbuf_w3B204
push	ax
mov	ax, offset idk_EmmRsrvExcdErrMsg
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx

loc_14855:		; " bytes"
mov	ax, offset argDst
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx

loc_1485F:
mov	ax, offset idk_EmmRsrvExcdErrMsg
push	ax		; arg0_PrintString

loc_14863:		; Call Procedure
call	EXIT_CleanUp
pop	cx
pop	bp
retf			; Return Far from Procedure
EXIT_AllocationError endp



; Attributes: bp-based frame

ST_AllocateSpace proc far
			; CODE XREF: LBX_Load_FontsStyleData+35P
			; LBX_Load_FontsStyleData+42P
			; LBX_Load_FontsStyleData+58P
			; LBX_Load_FontsStyleData+65P
			; LBX_Load_FontsStyleData+72P
			; LBX_Load_FontsStyleData+7FP
			; hrmLotsOfFarMallocStoreSW+EP
			; hrmLotsOfFarMallocStoreSW+28P
			; hrmLotsOfFarMallocStoreSW+42P
			; hrmLotsOfFarMallocStoreSW:loc_1BE61P
			; sub_25D7A+15P
			; idk_Mouse_s2B8B1+7P
			; ST_LoadSoundDrivers+576P
			; ST_LoadSoundDrivers+5EDP
			; ST_LoadSoundDrivers+622P
			; idk_EmsPgNm_TileFigureCont_s553B0+3FP
			; idk_EmsPgNm_TileFigureCont_s553B0+4CP
			; idk_EmsPgNm_TileFigureCont_s553B0+59P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55416P
			; idk_EmsPgNm_TileFigureCont_s553B0+206P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_555CEP
			; idk_EmsPgNm_TileFigureCont_s553B0+236P
			; idk_EmsPgNm_TileFigureCont_s553B0+24EP
			; idk_EmsPgNm_TileFigureCont_s553B0+266P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5562EP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55646P
			; idk_EmsPgNm_TileFigureCont_s553B0+2AEP
			; idk_EmsPgNm_TileFigureCont_s553B0+2C6P
			; idk_EmsPgNm_TileFigureCont_s553B0+2DEP
			; idk_EmsPgNm_TileFigureCont_s553B0+2F6P
			; idk_EmsPgNm_TileFigureCont_s553B0+30EP
			; idk_EmsPgNm_TileFigureCont_s553B0+326P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_556EEP
			; idk_EmsPgNm_TileFigureCont_s553B0+356P
			; idk_EmsPgNm_TileFigureCont_s553B0+36EP
			; idk_EmsPgNm_TileFigureCont_s553B0+386P
			; idk_EmsPgNm_TileFigureCont_s553B0+39EP
			; idk_EmsPgNm_TileFigureCont_s553B0+3ABP

varSegment= word ptr -2
arg_NbrBlocks_16byte= word ptr	6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si


mov	si, [bp+arg_NbrBlocks_16byte]
mov	ax, si
xor	dx, dx		; Logical Exclusive OR
mov	cl, 4
call	LXLSH@		; Left-Shift 2^4 (* 16)
add	ax, 16		; ...to	allow for alignment, as	16 byte	"blocks"
adc	dx, 0		; argMemErrorCode
push	dx
push	ax		; nbytes
call	_farmalloc	;
			; void far *__cdecl farmalloc(unsigned __int32 nbytes);
			; Return:
			; DX:AX
			; -address of allocate space on	far heap
			; -NULL	if failure (DX = AX = 0)
			;
pop	cx
pop	cx
mov	g_FarHeapAllocSegment, dx
mov	g_FarHeapAllocOffset, ax
mov	ax, g_FarHeapAllocOffset
or	ax, g_FarHeapAllocSegment ; Logical Inclusive OR
jnz	short NOT_NULL	; Jump if Not Zero (ZF=0)

DynamicAllocationTooSmallForAllocateSpace: ; argMemAmount
push	si
mov	ax, enum_MEM_Error_Type_1 ; argMemAmount
push	ax		; argMemErrorCode
nop			; No Operation
push	cs
call	near ptr MemBlocksErrorExit ; Call Procedure
pop	cx
pop	cx

NOT_NULL:		; CODE XREF: ST_AllocateSpace+32j
mov	ax, g_FarHeapAllocSegment
inc	ax		; Increment by 1
mov	[bp+varSegment], ax


mov	ax, 12FAh
push	ax		; argValue
mov	ax, 4
push	ax		; argOffset
push	[bp+varSegment]	; argSegment
call	fncStoSW	; arg0_DestES
			; arg2_DestDI
			; arg4_SrcStr
add	sp, 6		; Add


mov	ax, 4ECFh
push	ax		; argValue
mov	ax, 6
push	ax		; argOffset
push	[bp+varSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add


push	si		; argValue
mov	ax, 8
push	ax		; argOffset
push	[bp+varSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add


mov	ax, 1
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	[bp+varSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add


call	ST_UpdateWorstFreeKb ; Call Procedure


mov	ax, [bp+varSegment]


jmp	short $+2	; Jump
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
ST_AllocateSpace endp ;	sp-analysis failed



; Attributes: bp-based frame

; int __cdecl __far ST_FarMalloc(int argKiloBytes)
ST_FarMalloc proc far	; CODE XREF: LBX_Load_Entry+31P
			; LBX_Load_s15453+32P
			; LBX_Load_HelpNewTerrCity+32P
			; LBX_Load_Entry_4bytes+31P

varBytesAllocated= word	ptr -2
argKiloBytes= word ptr	6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
mov	ax, [bp+argKiloBytes]
xor	dx, dx		; Logical Exclusive OR
mov	cl, 4
call	LXLSH@		; Call Procedure
add	ax, 16		; Add
adc	dx, 0		; Add with Carry
push	dx
push	ax		; nbytes
call	_farmalloc	; DX:AX	- segment:offset address of allocated far heap
pop	cx
pop	cx
mov	g_FarHeapAllocSegment, dx
mov	g_FarHeapAllocOffset, ax
mov	ax, g_FarHeapAllocOffset
or	ax, g_FarHeapAllocSegment ; Logical Inclusive OR
jnz	short loc_1493F	; Jump if Not Zero (ZF=0)
xor	ax, ax		; Logical Exclusive OR

loc_1493D:		; CODE XREF: ST_FarMalloc+44j
jmp	short loc_14950	; Jump

loc_1493F:		; CODE XREF: ST_FarMalloc+2Fj
mov	ax, g_FarHeapAllocSegment
inc	ax		; Increment by 1
mov	[bp+varBytesAllocated],	ax
call	ST_UpdateWorstFreeKb ; Call Procedure
mov	ax, [bp+varBytesAllocated]
jmp	short loc_1493D	; Jump

loc_14950:		; CODE XREF: ST_FarMalloc:loc_1493Dj
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
ST_FarMalloc endp



; Attributes: bp-based frame

malloc_s14954 proc far	; CODE XREF: LBX_Load_Entry+27EP
			; LBX_Load_s15453+330P
			; LBX_EmsMapMem+169P
			; LBX_s16F45+95P
			; idk_PreEmmPgCnt+186P

varMallocSizeOrStatus= word ptr	-2
arg_0= word ptr	 6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction

xor	dx,dx
mov	ax,[R2]
;dx:ax = size requested	(long)

mov	ax, [bp+arg_0]
xor	dx, dx		; Logical Exclusive OR


mov	cl, 4
call	LXLSH@		;
			;
			;
			;
add	ax, 16		; ?add a paragraph?
adc	dx, 0		; BORLANDC\CTRL\CLIB\FARHEAP.ASM
			; ;add the header size and
			; ;force paragraph boundary
			;
			;
push	dx
push	ax		; unsigned int32 nbytes
call	_farmalloc	; #include <alloc.h>
			; void far * farmalloc(unsigned	long nbytes);
			; farmalloc allocates a	block of memory	nbytes bytes long from the far heap.
			; farmalloc returns a pointer to the newly allocated block,
			;  or null if not enough space exists for the new block.
			; ...
			; char far *fptr;
			; unsigned long	nbytes;
			; nbytes = 32768;
			; fptr = (char far *) farmalloc(nbytes);
			; ...
			;
pop	cx
pop	cx
mov	g_FarHeapAllocSegment, dx ;
			; Address of the first byte of user space available
			; from the heap	if successful (dx:ax)
mov	g_FarHeapAllocOffset, ax
mov	ax, g_FarHeapAllocOffset
or	ax, g_FarHeapAllocSegment ; Logical Inclusive OR
jnz	short loc_14989	; Jump if Not Zero (ZF=0)

@@NoCanDo:		; Logical Exclusive OR
xor	ax, ax

@@AllDone:		; CODE XREF: malloc_s14954+44j
jmp	short @@Exit	; Jump

loc_14989:		; CODE XREF: malloc_s14954+2Fj
mov	ax, g_FarHeapAllocSegment
inc	ax		; Increment by 1
mov	[bp+varMallocSizeOrStatus], ax ;
			;
			;
call	ST_UpdateWorstFreeKb ;
			;
			;
mov	ax, [bp+varMallocSizeOrStatus]
jmp	short @@AllDone	; Jump

@@Exit:			; CODE XREF: malloc_s14954:@@AllDonej
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
malloc_s14954 endp



; Attributes: bp-based frame

idk_LoadSw10_StoreSw14 proc far
			; CODE XREF: sub_4F44D+C8P
			; ST_LoadMusicSoundfxIntro+2BP
			; ST_LoadMusicSoundfxIntro+189P
			; ST_LoadMusicSoundfxIntro+1FEP
			; ST_LoadMusicSoundfxIntro+259P
			; ST_LoadMusicSoundfxIntro+2B5P

argValue= word ptr -2
arg0_DestES= dword ptr	6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si		; arg2_SI
mov	si, word ptr [bp+arg0_DestES]
mov	ax, 10
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
mov	[bp+argValue], ax
push	[bp+argValue]	; argValue
mov	ax, 14
push	ax		; argOffset
push	si		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
idk_LoadSw10_StoreSw14 endp



; Attributes: bp-based frame

idk_LoadSw14_StoreSw10 proc far
			; CODE XREF: sub_4F44D+35AP
			; ST_LoadMusicSoundfxIntro+17FP
			; ST_LoadMusicSoundfxIntro+1F4P
			; ST_LoadMusicSoundfxIntro+24FP
			; ST_LoadMusicSoundfxIntro+2ABP

argValue= word ptr -2
arg0_DestES= dword ptr	6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si		; arg2_SI
mov	si, word ptr [bp+arg0_DestES]
mov	ax, 14
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
mov	[bp+argValue], ax
push	[bp+argValue]	; argValue
mov	ax, 10
push	ax		; argOffset
push	si		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
idk_LoadSw14_StoreSw10 endp



; Attributes: bp-based frame

sub_149FA proc far	; CODE XREF: idk_EmsPgNm_TileFigureCont_s553B0:loc_55427P
			; idk_OVR_LoadLbxHelp:loc_55D17P
			; sub_56413+17P

var_2= word ptr	-2
arg0_DestES= dword ptr	6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si
push	di		; arg2_SI
mov	si, word ptr [bp+arg0_DestES+2]
mov	ax, si
inc	ax		; Increment by 1
mov	si, ax
mov	ax, word ptr [bp+arg0_DestES]
inc	ax		; Increment by 1
mov	di, ax
mov	ax, 8
push	ax
push	word ptr [bp+arg0_DestES] ; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
mov	[bp+var_2], ax
push	word ptr [bp+arg0_DestES] ; argPtrBuffer
call	ST_Chk_12FA_4ECF ; Call	Procedure
pop	cx
or	ax, ax		; Logical Inclusive OR
jnz	short loc_14A3A	; Jump if Not Zero (ZF=0)

loc_14A2E:		; argMemAmount
push	si
mov	ax, 3		; argMemAmount
push	ax		; argMemErrorCode
nop			; No Operation
push	cs
call	near ptr MemBlocksErrorExit ; Call Procedure
pop	cx
pop	cx

loc_14A3A:		; CODE XREF: sub_149FA+32j
cmp	[bp+var_2], si	; Compare Two Operands
jnb	short loc_14A50	; Jump if Not Below (CF=0)
mov	ax, si
sub	ax, [bp+var_2]	; Integer Subtraction
push	ax		; argMemAmount
mov	ax, enum_MEM_Error_Type_2 ; argMemAmount
push	ax		; argMemErrorCode
nop			; No Operation
push	cs
call	near ptr MemBlocksErrorExit ; Call Procedure
pop	cx
pop	cx

loc_14A50:		; CODE XREF: sub_149FA+43j
mov	ax, si
inc	ax		; Increment by 1
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	word ptr [bp+arg0_DestES] ; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 12FAh
push	ax		; argValue
mov	ax, 4
push	ax		; argOffset
push	di		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 4ECFh
push	ax		; argValue
mov	ax, 6
push	ax		; argOffset
push	di		; argSegment

loc_14A7D:		; Call Procedure
call	fncStoSW
add	sp, 6		; Add
mov	ax, si
dec	ax		; Decrement by 1
push	ax		; argValue
mov	ax, 8
push	ax		; argOffset
push	di		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 1
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	di		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 1
push	ax		; argValue
mov	ax, 14
push	ax		; argOffset
push	di		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, di
inc	ax		; Increment by 1
jmp	short $+2	; Jump
pop	di
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
sub_149FA endp ; sp-analysis failed



; Attributes: bp-based frame

sub_14AC3 proc far

var_4= word ptr	-4
var_2= word ptr	-2
argSegment= dword ptr  6

push	bp
mov	bp, sp
sub	sp, 4		; Integer Subtraction
push	si

loc_14ACA:
mov	si, word ptr [bp+argSegment]

loc_14ACD:
mov	ax, si
inc	ax		; Increment by 1
mov	[bp+var_4], ax
mov	ax, 8
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx

loc_14ADF:
mov	[bp+var_2], ax
mov	ax, 1
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	si		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
sub_14AC3 endp



; Attributes: bp-based frame

sub_14AF8 proc far	; CODE XREF: sub_4F44D+D6P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55441P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5545BP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55475P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5548FP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_554A9P
			; idk_EmsPgNm_TileFigureCont_s553B0+113P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_554DDP
			; idk_EmsPgNm_TileFigureCont_s553B0+147P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55511P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55530P
			; idk_OVR_LoadLbxHelp+A2P

argSegment= word ptr -2
argSI= word ptr	 6
argAX= word ptr	 8

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si
push	di		; arg2_SI
mov	si, [bp+argSI]
mov	di, [bp+argAX]
mov	ax, di
inc	ax		; Increment by 1
mov	di, ax
push	si		; argPtrBuffer
call	ST_Chk_12FA_4ECF ; Call	Procedure
pop	cx
or	ax, ax		; Logical Inclusive OR
jnz	short loc_14B22	; Jump if Not Zero (ZF=0)
push	di		; argMemAmount
mov	ax, enum_MEM_Error_Type_3 ; argMemAmount
push	ax		; argMemErrorCode
nop			; No Operation
push	cs
call	near ptr MemBlocksErrorExit ; Call Procedure
pop	cx
pop	cx

loc_14B22:		; CODE XREF: sub_14AF8+1Cj
push	si
nop			; No Operation
push	cs
call	near ptr fncSub2ndW1stW	;   mov	    si,	[bp+arg_0]
			;   mov	    ax,	8
			;   push    ax
			;   push    si
			;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
			;   push    ax
			;   mov	    ax,	10
			;   push    ax
			;   push    si
			;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
			;   pop	    dx
			;   sub	    dx,	ax
			;   mov	    [bp+var_2],	dx
			;   mov	    ax,	[bp+var_2]
			;   jmp	    short $+2
pop	cx
cmp	ax, di		; Compare Two Operands
jnb	short loc_14B44	; Jump if Not Below (CF=0)
push	si
nop			; No Operation
push	cs
call	near ptr fncSub2ndW1stW	;   mov	    si,	[bp+arg_0]
			;   mov	    ax,	8
			;   push    ax
			;   push    si
			;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
			;   push    ax
			;   mov	    ax,	10
			;   push    ax
			;   push    si
			;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
			;   pop	    dx
			;   sub	    dx,	ax
			;   mov	    [bp+var_2],	dx
			;   mov	    ax,	[bp+var_2]
			;   jmp	    short $+2
pop	cx
mov	dx, di
sub	dx, ax		; argMemErrorCode
push	dx		; argMemAmount
mov	ax, 2		; argMemAmount
push	ax		; argMemErrorCode
nop			; No Operation
push	cs
call	near ptr MemBlocksErrorExit ; Call Procedure
pop	cx
pop	cx

loc_14B44:		; CODE XREF: sub_14AF8+33j
mov	ax, 10
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
add	ax, si		; Add
mov	[bp+argSegment], ax
mov	ax, 10
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
add	ax, di		; Add
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	si		; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 12FAh
push	ax		; argValue
mov	ax, 4
push	ax		; argOffset
push	[bp+argSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 4ECFh
push	ax		; argValue
mov	ax, 6
push	ax		; argOffset
push	[bp+argSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, di
dec	ax		; Decrement by 1
push	ax		; argValue
mov	ax, 8
push	ax		; argOffset
push	[bp+argSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, 1
push	ax		; argValue
mov	ax, 10
push	ax		; argOffset
push	[bp+argSegment]	; argSegment
call	fncStoSW	; Call Procedure
add	sp, 6		; Add
mov	ax, [bp+argSegment]
inc	ax		; Increment by 1
jmp	short $+2	; Jump
pop	di
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
sub_14AF8 endp ; sp-analysis failed



;   mov	    si,	[bp+arg_0]
;   mov	    ax,	8
;   push    ax
;   push    si
;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
;   push    ax
;   mov	    ax,	10
;   push    ax
;   push    si
;   call    fncLoadSW;AX=[bp+arg_0];SI=[bp+arg_2];??:DS=AX=[bp+arg_0]
;   pop	    dx
;   sub	    dx,	ax
;   mov	    [bp+var_2],	dx
;   mov	    ax,	[bp+var_2]
;   jmp	    short $+2
; Attributes: bp-based frame

fncSub2ndW1stW proc far	; CODE XREF: sub_14AF8+2Dp
			; sub_14AF8+38p
			; LBX_Load_Entry+32BP
			; LBX_Load_Entry+339P
			; LBX_Load_s15453+3DDP
			; LBX_Load_s15453+3EBP
			; LBX_EmsMapMem+1D1P
			; LBX_s16F45+13DP
			; idk_PreEmmPgCnt+1F2P
			; idk_EmsPgNm_TileFigureCont_s553B0+177P

var_2= word ptr	-2
argOffset= dword ptr  6

push	bp
mov	bp, sp
sub	sp, 2		; Integer Subtraction
push	si		; arg2_SI
mov	si, word ptr [bp+argOffset]
mov	ax, 8
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx
push	ax		; Put the result of the	1st fnLoadSW on	the stack...
mov	ax, 10
push	ax
push	si		; argOffset
call	ST_Read_2B_From_Buffer_At_Offset ; Call	Procedure
pop	cx
pop	cx

loc_14BEC:		; ...Get the result of the 1st fncLoadSW off the stack
pop	dx

loc_14BED:		; Subtract the result of the 2nd fncLoadSW
sub	dx, ax		;   from the result of the 1st fncLoadSW...
mov	[bp+var_2], dx
mov	ax, [bp+var_2]
jmp	short $+2	; Jump
pop	si
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
fncSub2ndW1stW endp



;   mov	    ax,	[bp+arg_0]
;   mov	    [bp+var_6],	ax
;   mov	    ax,	[bp+var_6]
;   mov	    [bp+var_2],	ax
;   mov	    [bp+var_4],	0
;   mov	    dx,	[bp+var_2]
;   mov	    ax,	[bp+var_4]
;   jmp	    short $+2
; Attributes: bp-based frame

idk_DxAxBpSp_s14BFC proc far
			; CODE XREF: fncLoadTERRSTAT+1EP
			; LBX_SpellDat:loc_13EDFP
			; sub_1B341+CP
			; sub_1B654+1CP
			; hrmLotsOfFarMallocStoreSW+17P
			; hrmLotsOfFarMallocStoreSW+31P
			; hrmLotsOfFarMallocStoreSW+4BP
			; hrmLotsOfFarMallocStoreSW:loc_1BE6AP
			; sub_1EF3C:loc_1F000P
			; sub_1F13F:loc_1F16DP
			; sub_1F290+2DP
			; sub_21F59:loc_21F8EP
			; sub_220AA:loc_220E5P
			; idk_Mouse_s2B8B1+EP
			; ST_LoadSoundDrivers+14BP
			; ST_LoadSoundDrivers+173P
			; ST_LoadSoundDrivers+582P
			; ST_LoadSoundDrivers+5F9P
			; ST_LoadSoundDrivers+62EP
			; ST_LoadSound+76P
			; ST_LoadSound+1ABP
			; ST_LoadSound+2B0P
			; idk_BuildingWorlds+20P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5542FP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55449P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55463P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5547DP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55497P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_554B1P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_554CBP
			; idk_EmsPgNm_TileFigureCont_s553B0+135P
			; idk_EmsPgNm_TileFigureCont_s553B0+14FP
			; idk_EmsPgNm_TileFigureCont_s553B0+169P
			; idk_EmsPgNm_TileFigureCont_s553B0+195P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5555DP
			; idk_EmsPgNm_TileFigureCont_s553B0+1C5P
			; idk_EmsPgNm_TileFigureCont_s553B0+1DDP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_555A5P
			; idk_EmsPgNm_TileFigureCont_s553B0+20DP
			; idk_EmsPgNm_TileFigureCont_s553B0+225P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_555EDP
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_55605P
			; idk_EmsPgNm_TileFigureCont_s553B0+26DP
			; idk_EmsPgNm_TileFigureCont_s553B0+285P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_5564DP
			; idk_EmsPgNm_TileFigureCont_s553B0+2B5P
			; idk_EmsPgNm_TileFigureCont_s553B0+2CDP
			; idk_EmsPgNm_TileFigureCont_s553B0+2E5P
			; idk_EmsPgNm_TileFigureCont_s553B0:loc_556ADP
			; idk_EmsPgNm_TileFigureCont_s553B0+315P
			; idk_EmsPgNm_TileFigureCont_s553B0+32DP
			; idk_EmsPgNm_TileFigureCont_s553B0+345P
			; idk_EmsPgNm_TileFigureCont_s553B0+35DP
			; idk_EmsPgNm_TileFigureCont_s553B0+375P
			; idk_EmsPgNm_TileFigureCont_s553B0+38DP

var_6= word ptr	-6
var_4= word ptr	-4
var_2= word ptr	-2
arg_0= word ptr	 6

push	bp
mov	bp, sp
sub	sp, 6		; Integer Subtraction
mov	ax, [bp+arg_0]
mov	[bp+var_6], ax	; var_6	= arg_0;
mov	ax, [bp+var_6]
mov	[bp+var_2], ax
mov	[bp+var_4], 0
mov	dx, [bp+var_2]
mov	ax, [bp+var_4]
jmp	short $+2	; ?skip	'mov sp, bp'?
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
idk_DxAxBpSp_s14BFC endp



; Attributes: bp-based frame

sub_14C1F proc far
push	bp
mov	bp, sp
sub	sp, 8		; Integer Subtraction

loc_14C25:
mov	ax, [bp+6]
mov	[bp-6],	ax
mov	ax, [bp+8]

loc_14C2E:
mov	[bp-8],	ax
mov	ax, [bp-6]
xor	dx, dx		; Logical Exclusive OR
add	dx, [bp-8]	; Add
adc	ax, 0		; Add with Carry

loc_14C3C:
mov	[bp-2],	ax
mov	[bp-4],	dx
mov	dx, [bp-2]
mov	ax, [bp-4]

loc_14C48:		; Jump
jmp	short $+2
mov	sp, bp
pop	bp
retf			; Return Far from Procedure
sub_14C1F endp



; Attributes: bp-based frame

CALL_farfree proc far
push	bp
mov	bp, sp
mov	ax, [bp+6]
dec	ax		; Decrement by 1
mov	g_FarHeapAllocSegment, ax
mov	g_FarHeapAllocOffset, 4
push	g_FarHeapAllocSegment
push	g_FarHeapAllocOffset ; block
call	_farfree	; Call Procedure
pop	cx
pop	cx
pop	bp
retf			; Return Far from Procedure
CALL_farfree endp



; Attributes: bp-based frame

; int __fastcall __far MemBlocksErrorExit(int argMemAmount, int	argMemErrorCode)
MemBlocksErrorExit proc	far
			; CODE XREF: ST_AllocateSpace+3Bp
			; sub_149FA+3Bp
			; sub_149FA+51p
			; sub_14AF8+25p
			; sub_14AF8+47p
			; sub_17A50+3CP
			; sub_17AFA+3AP

varChar20= byte	ptr -8Ch
varChar120= byte ptr -78h
argMemErrorCode= word ptr  6
argMemAmount= word ptr	8

push	bp
mov	bp, sp
sub	sp, 140		; Integer Subtraction
push	si		; argConversionBase
mov	si, [bp+argMemAmount]
call	fncCheckDebugMode ; Call Procedure
or	ax, ax		; If (AX == 0) Then Set	(ZF = 1)
jz	short DEBUG_MODE ; Jump	if Zero	(ZF=1)
mov	ax, offset strInsfMem1 ; "Insufficient memory. You need	at least "...
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDest
call	_strcpy		; argDest,argSrc
pop	cx
pop	cx
mov	ax, 10
push	ax
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax		; argPtrCharArr
push	nRequiredMEM_583 ; argNumber
call	_itoa		; argNumber,argPtrCharArr,argConversionBase
add	sp, 6		; Add

loc_14CA7:		; Load Effective Address
lea	ax, [bp+varChar20]
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx
mov	ax, offset strInsfMem2 ; "K free. Try removing all TSR's."
push	ax

loc_14CBB:		; Load Effective Address
lea	ax, [bp+varChar120]
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; arg0_PrintString
call	EXIT_CleanUp	; Call Procedure
pop	cx

DEBUG_MODE:		; CODE XREF: MemBlocksErrorExit+12j
mov	bx, [bp+argMemErrorCode]
dec	bx		; Decrement by 1
cmp	bx, 3		; switch 4 cases
jbe	short loc_14CDC	; Jump if Below	or Equal (CF=1 | ZF=1)
jmp	loc_14DFA	; default

loc_14CDC:		; CODE XREF: MemBlocksErrorExit+68j
shl	bx, 1		; Shift	Logical	Left
jmp	cs:off_14E09[bx] ; switch jump

DynAllocTooSmallForAllocSpace:
			; DATA XREF: seg008:off_14E09o
mov	ax, offset aDynamicAllocat ; case 0x0
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDest
call	_strcpy		; argDest,argSrc
pop	cx
pop	cx
mov	ax, 10
push	ax
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax		; argPtrCharArr
push	si		; argNumber
call	_itoa		; argNumber,argPtrCharArr,argConversionBase
add	sp, 6		; Add

loc_14D04:		; CODE XREF: MemBlocksErrorExit:loc_14DA6j
mov	ax, offset aOf	; " of "
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx

loc_14D13:		; CODE XREF: MemBlocksErrorExit+105j
			; MemBlocksErrorExit:loc_14DF7j
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx
mov	ax, offset aBlocks_0 ; " blocks"
push	ax

loc_14D27:		; Load Effective Address
lea	ax, [bp+varChar120]
push	ax		; argDst

loc_14D2B:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx
jmp	loc_14DFA	; default

loc_14D35:		; CODE XREF: MemBlocksErrorExit+6Fj
			; DATA XREF: seg008:off_14E09o
mov	ax, offset aFailedToReload ; case 0x1
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDest
call	_strcpy		; argDest,argSrc
pop	cx
pop	cx
mov	ax, offset aAllocate_next_ ; " Allocate_Next_Block()"
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst

loc_14D4C:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx
mov	ax, offset aShortBy ; ": Short by "
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst

loc_14D5B:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx
mov	ax, 10
push	ax
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax		; argPtrCharArr
push	si		; argNumber
call	_itoa		; argNumber,argPtrCharArr,argConversionBase
add	sp, 6		; Add
jmp	short loc_14D13	; Jump

AllocationSpaceCorrupted:
			; CODE XREF: MemBlocksErrorExit+6Fj
			; DATA XREF: seg008:off_14E09o
mov	ax, offset aAllocationSpac ; case 0x2
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDest
call	_strcpy		; argDest,argSrc
pop	cx

loc_14D84:
pop	cx
mov	ax, 10
push	ax
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax		; argPtrCharArr
push	si		; argNumber
call	_itoa		; argNumber,argPtrCharArr,argConversionBase
add	sp, 6		; Add

loc_14D97:		; " Allocate_Next_Block()"
mov	ax, offset aAllocate_next_
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst

loc_14D9F:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx

loc_14DA6:		; Jump
jmp	loc_14D04

loc_14DA9:		; CODE XREF: MemBlocksErrorExit+6Fj
			; DATA XREF: seg008:off_14E09o
mov	ax, offset aFailedToReload ; case 0x3
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDest

loc_14DB1:		; argDest,argSrc
call	_strcpy
pop	cx
pop	cx

loc_14DB8:		; " (EMM) "
mov	ax, offset aEmm

loc_14DBB:
push	ax

loc_14DBC:		; Load Effective Address
lea	ax, [bp+varChar120]
push	ax		; argDst
call	_strcat		; char*	strcat(char* destination, const	char* source)
pop	cx
pop	cx
mov	ax, offset aAllocate_next_ ; " Allocate_Next_Block()"
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst

loc_14DCF:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx
mov	ax, offset aShortBy ; ": Short by "
push	ax
lea	ax, [bp+varChar120] ; Load Effective Address
push	ax		; argDst

loc_14DDE:		; char*	strcat(char* destination, const	char* source)
call	_strcat
pop	cx
pop	cx
mov	ax, 10
push	ax
lea	ax, [bp+varChar20] ; Load Effective Address
push	ax		; argPtrCharArr
push	si		; argNumber
call	_itoa		; argNumber,argPtrCharArr,argConversionBase

loc_14DF4:		; Add
add	sp, 6

loc_14DF7:		; Jump
jmp	loc_14D13

loc_14DFA:		; CODE XREF: MemBlocksErrorExit+6Aj
			; MemBlocksErrorExit+C3j
lea	ax, [bp+varChar120] ; default
push	ax		; arg0_PrintString

loc_14DFE:		; Call Procedure
call	EXIT_CleanUp
pop	cx

loc_14E04:
pop	si

loc_14E05:
mov	sp, bp
pop	bp

locret_14E08:		; Return Far from Procedure
retf
MemBlocksErrorExit endp

off_14E09 dw offset DynAllocTooSmallForAllocSpace
			; DATA XREF: MemBlocksErrorExit+6Fr
dw offset loc_14D35	; jump table for switch	statement
dw offset AllocationSpaceCorrupted
dw offset loc_14DA9
seg008 ends
