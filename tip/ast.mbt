struct Var {
  
}

enum Exp {
  Int(Int)
  Ident(Var)
  BinOp(String, Exp, Exp)
  Paren(Exp)
  Input
  DirectCall(Var, Array[Exp])
  IndirctCall(Exp, Array[Exp])
  Alloc(Exp)
  AddrOf(Var) // &Id
  Deref(Exp) // *Exp
  Null
  Dot(Exp, Var)
  Record(Array[(Var, Exp)])
}