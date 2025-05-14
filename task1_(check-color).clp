         CLIPS (6.30 3/17/15)
CLIPS> (deftemplate person (slot name) (slot hair-color))
CLIPS> (defrule check-color
       (person (name ?name)(hair-color ?color&~brown&~black))
        =>
       (printout t ?name " has " ?color "  hair " crlf))
CLIPS> (assert (person (name Farah) (hair-color red)))
==> f-1     (person (name Farah) (hair-color red))
==> Activation 0      check-color: f-1
<Fact-1>
CLIPS> (assert (person (name Ali) (hair-color black)))
==> f-2     (person (name Ali) (hair-color black))
<Fact-2>
CLIPS> (run)
FIRE    1 check-color: f-1
Farah has red  hair 
CLIPS> 
