         CLIPS (6.30 3/17/15)
CLIPS> (deftemplate person (multislot name (type STRING SYMBOL) (cardinality 2 4)) (slot age (range 20 25)))
CLIPS> (assert (person (name Sara Ali Hosam) (age 23)))
==> f-1     (person (name Sara Ali Hosam) (age 23))
<Fact-1>
CLIPS> (assert (person (name "Sara" "Ali") (age 21)))
==> f-2     (person (name "Sara" "Ali") (age 21))
<Fact-2>
CLIPS> (assert (person (name 22 13) (age 21)))

[CSTRNCHK1] A literal slot value found in the assert command
does not match the allowed types for slot name.
CLIPS> (assert (person (name Sara) (age 21)))

[CSTRNCHK1] Literal slot values found in the assert command
does not satisfy the cardinality restrictions for slot name.
CLIPS> (assert (person (name Sara Ali) (age 13)))

[CSTRNCHK1] A literal slot value found in the assert command
does not fall in the allowed range 20 to 25 for slot age.
CLIPS> 
