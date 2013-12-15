.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

; Main method
.method public static main([Ljava/lang/String;)V
    .limit stack 100
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 0	; 0
    ldc 1	; 1
    iadd	; 0 + 1
    invokevirtual java/io/PrintStream/println(I)V
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 2	; 2
    ldc 1	; 1
    isub	; 2 - 1
    invokevirtual java/io/PrintStream/println(I)V
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 1	; 1
    ldc 1	; 1
    imul	; 1 * 1
    invokevirtual java/io/PrintStream/println(I)V
    return
.end method