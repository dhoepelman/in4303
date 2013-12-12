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
    iconst_1
    ineg
    invokevirtual java/io/PrintStream/println(I)V
    end_0 :
    return
.end method