.class public A
.super java/lang/Object

; Default constructor
.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public methodA()LA;
    .limit stack 100
    new A				; Make a new "A" object
    dup					; Duplicate the reference
    invokenonvirtual A/<init>()V	; Call the constructor
    areturn
.end method