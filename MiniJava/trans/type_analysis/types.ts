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
	
	// Variable references
	VarRef(r): ty
	where definition of r: ty
	
	// Methods
	// Call(exp, callee, params): ty
	// where definition of callee: ty
	