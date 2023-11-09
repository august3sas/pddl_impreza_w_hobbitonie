(define (problem p1) (:domain rush_hour)

(:objects 
    pa1 pa2 pa3 pa4 pa5 pa6
    pb1 pb2 pb3 pb4 pb5 pb6
    pc1 pc2 pc3 pc4 pc5 pc6
    pd1 pd2 pd3 pd4 pd5 pd6
    pe1 pe2 pe3 pe4 pe5 pe6
    pf1 pf2 pf3 pf4 pf5 pf6 - position
    car1 car2 car3 car4 car5 car6 car7 car8 tir1 tir2 tir3 red - car
    br b1 b2 b3 b4 b5 b6 b7 b8 bt1 bt2 bt3 nr n1 n2 n3 n4 n5 n6 n7 n8 nt1 nt2 nt3 off - gearbox
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

  (samochodzik2 red pc1 pc2 horizontal)
  (samochodzik2 car1 pd1 pe1 vertical)
  (samochodzik2 car2 pd2 pd3 horizontal)
  (samochodzik2 car3 pe2 pe3 horizontal)
  (samochodzik2 car4 pb3 pc3 vertical)
  (samochodzik2 car5 pd4 pd5 horizontal)
  (samochodzik2 car6 pe4 pf4 vertical)
  (samochodzik2 car7 pc6 pd6 vertical)
  (samochodzik2 car8 pe6 pf6 vertical)
  
  (samochodzik3 tir1 pa1 pa2 pa3 horizontal)
  (samochodzik3 tir2 pf1 pf2 pf3 horizontal)
  (samochodzik3 tir3 pa5 pb5 pc5 vertical)

  (pusty pb1)
  (pusty pb2)
  (pusty pa4)
  (pusty pb4)
  (pusty pc4)
  (pusty pe5)
  (pusty pf5)
  (pusty pa6)
  (pusty pb6)

  (bieg off)
  (bieg br)(bieg b1)(bieg b2)(bieg b3)(bieg b4)(bieg b5)(bieg b6)(bieg b7)(bieg b8)(bieg bt1)(bieg bt2)(bieg bt3)
  (bieg nr)(bieg n1)(bieg n2)(bieg n3)(bieg n4)(bieg n5)(bieg n6)(bieg n7)(bieg n8)(bieg nt1)(bieg nt2)(bieg nt3)
  (transmission off nr)
  (transmission br nr)(transmission n1 nr)
  (transmission b1 n1)(transmission n2 n1)
  (transmission b2 n2)(transmission n3 n2)
  (transmission b3 n3)(transmission n4 n3)
  (transmission b4 n4)(transmission n5 n4)
  (transmission b5 n5)(transmission n6 n5)
  (transmission b6 n6)(transmission n7 n6)
  (transmission b7 n7)(transmission n8 n7)
  (transmission b8 n8)(transmission nt1 n8)
  (transmission bt1 nt1)(transmission nt2 nt1)
  (transmission bt2 nt2)(transmission nt3 nt2)
  (transmission bt3 nt3)
  (pozwolenie br red)
  (pozwolenie b1 car1)
  (pozwolenie b2 car2)
  (pozwolenie b3 car3)
  (pozwolenie b4 car4)
  (pozwolenie b5 car5)
  (pozwolenie b6 car6)
  (pozwolenie b7 car7)
  (pozwolenie b8 car8)
  (pozwolenie bt1 tir1)
  (pozwolenie bt2 tir2)
  (pozwolenie bt3 tir3)
  (korbka off)
)

(:goal 
    (and
        (samochodzik2 red pc5 pc6 horizontal)
        (korbka off)
        ;(samochodzik2 car7 pb6 pc6 vertical)
    )
)

)
