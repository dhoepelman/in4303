; package level = no keyword?
; .class public Main
.class public Main
.super java/lang/Object

    ;
    ; standard initializer (calls java.lang.Object's initializer)
    ;
    .method public <init>()V
       aload_0
       invokenonvirtual java/lang/Object/<init>()V
       return
    .end method

    ;
    ; main() - prints out Hello World
    ;
    .method public static main([Ljava/lang/String;)V
       .limit stack 2   ; up to two items can be pushed

       ; push System.out onto the stack
       getstatic java/lang/System/out Ljava/io/PrintStream;

       ; push the constant 42 onto the stack
       ldc 42

       ; call the PrintStream.println() method.
       invokevirtual java/io/PrintStream/println(I)V
	   
       ; done
       return
    .end method