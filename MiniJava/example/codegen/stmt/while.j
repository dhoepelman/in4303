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

		; It is more efficient to jump to the condition here, as it decreases the number of jumps in loop execution from 2 to 1
		goto loopcond0

loop0:
		getstatic java/lang/System/out Ljava/io/PrintStream;
		iconst_0
		invokevirtual java/io/PrintStream/println(I)V	
		
loopcond0:
		iconst_0
		ifne loop0

       return
    .end method