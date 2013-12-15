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
    iconst_1	; 1
    ixor		; a ^ 1
    ifeq else
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 1
    invokevirtual java/io/PrintStream/println(I)V
    goto end
else:
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 0
    invokevirtual java/io/PrintStream/println(I)V
end:
    return
.end method