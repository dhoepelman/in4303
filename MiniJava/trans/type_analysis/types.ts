module types

imports

	assignment1/MiniJava
	analysis/desugar
	
type rules
	/** Literals and operators **/
	// Literals
	IntValue(v): Int()
	True(): Bool()
	False(): Bool()
	
	// Object instantiation
	NewObject(c): ClassType(c)
	
	// Unary expressions
	UnExp(operator, exp): ty
	where exp: ety1
		and operator : (ty1, ty)
		and ety1 == ty1
		
	Negation(): (Bool(), Bool())
	ArrayLength(): (IntArray(), Int())
	AllocateArray(): (Int(), IntArray())
	// create-type-task(|ctx):
  // 	UnExp(e1, e2) -> <type-is(|ctx, [task2])> ty
  // 	where
  // 			(ty1,ty) := <type-of-op> e1
  // 		;	task1 := <type-task(|ctx)> e1
  // 		;	task2 := <type-match(|ctx, ty1)> task1
  // // Constraints of Unary operators
  // type-of-op: Negation() -> (Bool(), Bool())
  // type-of-op: ArrayLength() -> (IntArray(), Int())
  // type-of-op: AllocateArray() -> (Int(), IntArray())
	
	/** References **/
	// Variable references
	VarRef(r): ty
	where definition of r: ty
	
	
	/* Methods */
	// Methods calls
	// Call(exp, callee, params): ty
	// where definition of callee: ty
	
	// Method parameters
	Param(t, p): t
	
	
	/* Type constraints */
	
	// Statements
	