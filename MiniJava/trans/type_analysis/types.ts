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
		where	definition of var : t
			and	exp: texp
			and	texp == t else error "Incompatible variable and expression type" on exp
			
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
			and	tretexp == treturn else error "Incompatible return and expression type" on retexp
			
	/***********
	 * Subtyping
	 ***********/
	 // No parent class
	 None() : Top()
	 Parent(c) : ClassType(c)
	 
	 // Subtyping operator
	 ty1 <: ty2
		where ty1 == ty2
	 /*
	 ty1 <: ty2
		where ty1 == ty2
   			or ty1 => ClassType(c) // extract class name from class type with a pattern match
  			and c : ctype          // lookup type from class name
  			and ty2 == ctype       // match type with ty2 */