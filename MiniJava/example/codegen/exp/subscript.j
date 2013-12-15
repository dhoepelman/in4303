.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 100
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 5			; 5
    newarray int	; new int[5]
    ldc 0			; 0
    iaload			; (new int[5])[0]
    invokevirtual java/io/PrintStream/println(I)V
    return
.end method