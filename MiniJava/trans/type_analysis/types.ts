module types

imports

	assignment1/MiniJava
	analysis/desugar
	
type rules

	// Literals
	IntValue(v): Int()
	True(): Bool()
	False(): Bool()
	
	// Object instantiation
	NewObject(c): ClassType(c)