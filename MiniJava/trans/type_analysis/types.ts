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
	
	// Unary operators
	UnExp(operator, exp): ty
	where exp: ety1
		and operator: (ty1, ty)
		and ety1 == ty1				else error "Incompatible type" on exp	
	Negation(): (Bool(), Bool())
	ArrayLength(): (IntArray(), Int())
	AllocateArray(): (Int(), IntArray())
	
	// Binary operators
	BinExp(operator, subexp1, subexp2): ty
	where	subexp1: ety1
		and	subexp2: ety2
		and operator: (ty1, ty2, ty)
		and ety1 == ty1				else error "Incompatible type" on subexp1
		and ety2 == ty2				else error "Incompatible type" on subexp2
	LogicalAnd(): (Bool(), Bool(), Bool())
	LessThan(): (Int(), Int(), Bool())
	Times(): (Int(), Int(), Int())
	Minus(): (Int(), Int(), Int())
	Plus(): (Int(), Int(), Int())	 	
	ArrayAccess(): (IntArray(), Int(), Int())
	
	/** References **/
	// Variable references
	VarRef(r): ty
	where definition of r: ty
	
	// Method parameters
	Param(t, name): t
	
	
	/* Type constraints */
	
	// Statements
	ArrayAssign(var, idx, exp) :-
		where	definition of var: tvar
			and	idx: tidx
			and exp: texp
			and	tvar == IntArray() else error "Not an array" on var
			and tidx == Int() else error "Array index needs to be an integer" on idx
			and texp == Int() else error "Incompatible array and expression type" on exp
		
	Assign(var, exp) :-
		where	definition of var : tvar
			and	exp: texp
			and	texp <: tvar else error "Incompatible variable and expression type" on exp
			//and	tvar <: texp else error "Incompatible variable and expression type" on exp
			
	Print(exp) :-
		where	exp: texp
			and	texp == Int() else error "Incompatible expression type: can only print integers" on exp
			
	While(exp, statements) :-
		where exp: texp
			and texp == Bool() else error "Incompatible expression type: condition must be boolean" on exp
			
	If(exp, ifstmt, elsestmt) :-
		where exp: texp
			and texp == Bool() else error "Incompatible expression type: condition must be boolean" on exp
		 	
	// Method return type
	Method(treturn, mname, params, vars, statements, retexp) :-
		where	retexp: tretexp
			and	tretexp <: treturn else error "Incompatible return and expression type" on retexp
			
	/***********
	 * Subtyping
	 ***********/
	 // No parent class
	 None() : Top()
	 
	 // Subtyping operator
	 // Definition: S <: T  means S is a subtype of T or equivalent "S can be safely used when T is expected"
	type-used <: type-expected
		where type-used == type-expected
			or type-used => ClassType(cused) 		// extract class name from class type with a pattern match
			and definition of cused : parenttype	// lookup type from class name
			and type-expected == parenttype			// match type with ty2 
		