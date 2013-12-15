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
    new A							; new A();
    dup								; Duplicate reference
    invokenonvirtual A/<init>()V	; Call constructor
    invokevirtual A/foo()I			; Call A#foo()
    invokevirtual java/io/PrintStream/println(I)V	; Print result
    return
.end method