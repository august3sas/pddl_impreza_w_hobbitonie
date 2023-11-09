(define 
    (domain rush_hour)
    (:requirements :adl :strips)
    (:types 
        car position direction gearbox
    )
    (:constants
        vertical horizontal - direction
    )
    (:predicates
        (poziomo ?p1 ?p2 - position)
        (pionowo ?p1 ?p2 - position)
        (samochodzik2 ?type - car ?p1 ?p2 - position ?dir - direction)
        (samochodzik3 ?type - car ?p1 ?p2 ?p3 - position ?dir - direction)
        (pusty ?p1 - position)
        (bieg ?id - gearbox)
        (korbka ?id - gearbox)
        (transmission ?id1 ?id2 - gearbox)
        (pozwolenie ?id - gearbox ?type - car)
    )
    (:action zmien_bieg
        :parameters(?id1 - gearbox ?id2 - gearbox)
        :precondition(and
            (korbka ?id1)
            (or
                (transmission ?id1 ?id2)
                (transmission ?id2 ?id1)
            )
        )
        :effect(and
            (korbka ?id2)
            (not(korbka ?id1))
        )
    )
    (:action przesun_samochodzik2_poziomo
        :parameters (?type - car ?p1 - position ?p2 - position ?px - position ?dir - direction ?gear - gearbox)
        :precondition (and 
            (korbka ?gear)
            (pozwolenie ?gear ?type)
            (samochodzik2 ?type ?p1 ?p2 ?dir)
            (poziomo ?p1 ?p2)
            (not (or(= ?p1 ?px)(= ?p2 ?px)))
            (or
                (poziomo ?px ?p1)
                (poziomo ?p2 ?px)
            )
            (pusty ?px)
            (not(pusty ?p1))
            (not(pusty ?p2))
        )
        :effect (and 
            (not(samochodzik2 ?type ?p1 ?p2 ?dir))
            (when 
                (poziomo ?px ?p1);precondition2
                (and;effect
                    (samochodzik2 ?type ?px ?p1 ?dir)
                    (not(pusty ?px))
                    (pusty ?p2)
                )
            )
            (when 
                (poziomo ?p2 ?px)
                (and
                    (samochodzik2 ?type ?p2 ?px ?dir)
                    (not(pusty ?px))
                    (pusty ?p1)
                )
            )
        )
    )
    (:action przesun_samochodzik2_pionowo
        :parameters (?type - car ?p1 - position ?p2 - position ?px - position ?dir - direction ?gear - gearbox)
        :precondition (and 
            (korbka ?gear)
            (pozwolenie ?gear ?type)
            (samochodzik2 ?type ?p1 ?p2 ?dir)
            (pionowo ?p1 ?p2)
            (not (or(= ?p1 ?px)(= ?p2 ?px)))
            (or
                (pionowo ?px ?p1)
                (pionowo ?p2 ?px)
            )
            (pusty ?px)
            (not(pusty ?p1))
            (not(pusty ?p2))
        )
        :effect (and 
            (not(samochodzik2 ?type ?p1 ?p2 ?dir))
            (when 
                (pionowo ?px ?p1)
                (and
                    (samochodzik2 ?type ?px ?p1 ?dir)
                    (not(pusty ?px))
                    (pusty ?p2)
                )
            )
            (when 
                (pionowo ?p2 ?px)
                (and
                    (samochodzik2 ?type ?p2 ?px ?dir)
                    (not(pusty ?px))
                    (pusty ?p1)
                )
            )
        )
    )
    (:action przesun_samochodzik3_poziomo
        :parameters (?type - car ?p1 - position ?p2 - position ?p3 - position ?px - position ?dir - direction  ?gear - gearbox)
        :precondition (and 
            (korbka ?gear)
            (pozwolenie ?gear ?type)
            (samochodzik3 ?type ?p1 ?p2 ?p3 ?dir)
            (poziomo ?p1 ?p2)
            (poziomo ?p2 ?p3)
            (not (or(= ?p1 ?px)(= ?p2 ?px)(= ?p3 ?px)))
            (or
                (poziomo ?px ?p1)
                (poziomo ?p3 ?px)
            )
            (pusty ?px)
            (not(pusty ?p1))
            (not(pusty ?p2))
            (not(pusty ?p3))
        )
        :effect (and 
            (not(samochodzik3 ?type ?p1 ?p2 ?p3 ?dir))
            (when 
                (poziomo ?px ?p1)
                (and
                    (samochodzik3 ?type ?px ?p1 ?p2 ?dir)
                    (not(pusty ?px))
                    (pusty ?p3)
                )
            )
            (when 
                (poziomo ?p3 ?px)
                (and
                    (samochodzik3 ?type ?p2 ?p3 ?px ?dir)
                    (not(pusty ?px))
                    (pusty ?p1)
                )
            )
        )
    )
    (:action przesun_samochodzik3_pionowo
        :parameters (?type - car ?p1 - position ?p2 - position ?p3 - position ?px - position ?dir - direction  ?gear - gearbox)
        :precondition (and 
            (korbka ?gear)
            (pozwolenie ?gear ?type)
            (samochodzik3 ?type ?p1 ?p2 ?p3 ?dir)
            (pionowo ?p1 ?p2)
            (pionowo ?p2 ?p3)
            (not (or(= ?p1 ?px)(= ?p2 ?px)(= ?p3 ?px)))
            (or
                (pionowo ?px ?p1)
                (pionowo ?p3 ?px)
            )
            (pusty ?px)
            (not(pusty ?p1))
            (not(pusty ?p2))
            (not(pusty ?p3))
        )
        :effect (and 
            (not(samochodzik3 ?type ?p1 ?p2 ?p3 ?dir))
            (when 
                (pionowo ?px ?p1)
                (and
                    (samochodzik3 ?type ?px ?p1 ?p2 ?dir)
                    (not(pusty ?px))
                    (pusty ?p3)
                )
            )
            (when 
                (pionowo ?p3 ?px)
                (and
                    (samochodzik3 ?type ?p2 ?p3 ?px ?dir)
                    (not(pusty ?px))
                    (pusty ?p1)
                )
            )
        )
    )
    
    
)