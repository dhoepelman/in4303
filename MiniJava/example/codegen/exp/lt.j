.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 100
    iconst_1	; a
    iconst_2	; b
    isub		; a - b (negative if a < b, 0 or positive if a >= b)
    ldc 31		; 31
    iushr		; (a - b) >>> 31, aka get the sign (1 if negative, 0 if 0 or positive)
    			; this is equivalent to a < b
    ifeq else_0
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 1
    invokevirtual java/io/PrintStream/println(I)V
    goto end_0
    else_0 :
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 0
    invokevirtual java/io/PrintStream/println(I)V
    end_0 :
    return
.end method