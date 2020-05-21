	org	$3f00
start	lda	#$f8
	sta	$ff22
	sta	$ffc3
	sta	$ffc5
				
	ldx	#title1
	ldy	#$400
ploop1	ldd	,x++
	std	,y++
	cmpx	#endpic1
	blo	ploop1
	ldx	#office
	ldy	#$400
ploop2	ldd	,x++
	std	,y++
	cmpx	#endpic1
	blo	ploop2

forever	jmp	forever

title1	includebin	"title1.raw"
endpic1	equ	*
office	includebin	"office.raw"
endpic2	equ	*
	end	start