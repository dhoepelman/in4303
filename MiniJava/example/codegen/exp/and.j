.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 100
   	; a && b
    iconst_1	; a
    ifeq falselbl
    iconst_0	; b
    ifeq falselbl
    iconst_1	; a && b == true
    goto end
false:
	iconst_0	; a == false or b == true
end:
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