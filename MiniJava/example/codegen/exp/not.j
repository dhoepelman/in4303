.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 100
    iconst_1
    iconst_1
    ixor
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