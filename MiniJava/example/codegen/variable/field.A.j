.class public A
.super java/lang/Object

.field public field1 I

; empty constructor
.method public <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

; method returning field1
.method public foo()I
    .limit stack 1
    aload_0	; Load this
    getfield A/field1 I	; get A.field1
    ireturn	; return it
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