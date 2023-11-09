(define (problem p1) (:domain impreza_w_hobbitonie)

(:objects 
    pa1 pa2 pa3 pa4 pa5 pa6
    pb1 pb2 pb3 pb4 pb5 pb6
    pc1 pc2 pc3 pc4 pc5 pc6
    pd1 pd2 pd3 pd4 pd5 pd6
    pe1 pe2 pe3 pe4 pe5 pe6
    pf1 pf2 pf3 pf4 pf5 pf6 - position
)

(:init
  (poziomo pa1 pa2)(poziomo pa2 pa3)(poziomo pa3 pa4)(poziomo pa4 pa5)(poziomo pa5 pa6)
  (poziomo pb1 pb2)(poziomo pb2 pb3)(poziomo pb3 pb4)(poziomo pb4 pb5)(poziomo pb5 pb6)
  (poziomo pc1 pc2)(poziomo pc2 pc3)(poziomo pc3 pc4)(poziomo pc4 pc5)(poziomo pc5 pc6)
  (poziomo pd1 pd2)(poziomo pd2 pd3)(poziomo pd3 pd4)(poziomo pd4 pd5)(poziomo pd5 pd6)
  (poziomo pe1 pe2)(poziomo pe2 pe3)(poziomo pe3 pe4)(poziomo pe4 pe5)(poziomo pe5 pe6)
  (poziomo pf1 pf2)(poziomo pf2 pf3)(poziomo pf3 pf4)(poziomo pf4 pf5)(poziomo pf5 pf6)

  (pionowo pa1 pb1)(pionowo pa2 pb2)(pionowo pa3 pb3)(pionowo pa4 pb4)(pionowo pa5 pb5)(pionowo pa6 pb6)
  (pionowo pb1 pc1)(pionowo pb2 pc2)(pionowo pb3 pc3)(pionowo pb4 pc4)(pionowo pb5 pc5)(pionowo pb6 pc6)
  (pionowo pc1 pd1)(pionowo pc2 pd2)(pionowo pc3 pd3)(pionowo pc4 pd4)(pionowo pc5 pd5)(pionowo pc6 pd6)
  (pionowo pd1 pe1)(pionowo pd2 pe2)(pionowo pd3 pe3)(pionowo pd4 pe4)(pionowo pd5 pe5)(pionowo pd6 pe6)
  (pionowo pe1 pf1)(pionowo pe2 pf2)(pionowo pe3 pf3)(pionowo pe4 pf4)(pionowo pe5 pf5)(pionowo pe6 pf6)
)

(:goal 

)

)
