(clear)
(reset)
(import nrc.fuzzy.*)
(import nrc.fuzzy.jess.*)

; all the global variables
(defglobal ?*age* = (new nrc.fuzzy.FuzzyVariable "age" 10.0 100.0 "User's Age"))
(defglobal ?*pop* = (new nrc.fuzzy.FuzzyVariable "pop" 1.0 5.0 "User's interest in Pop"))
(defglobal ?*metal* = (new nrc.fuzzy.FuzzyVariable "metal" 1.0 5.0 "User's interest in Metal"))
(defglobal ?*rap* = (new nrc.fuzzy.FuzzyVariable "rap" 1.0 5.0 "User's interest in Rap"))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation1" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation2" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation3" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation4" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation5" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation6" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation7" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation8" 1.0 5.0 ""))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation11" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation12" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation13" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation14" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation15" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation16" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation17" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation18" 1.0 5.0 ""))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation21" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation22" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation23" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation24" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation25" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation126" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation27" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "recommendation28" 1.0 5.0 ""))


; initialize the fuzzy variables and add the required terms

(defrule initFuzzy  
    =>
   	(load-package nrc.fuzzy.jess.FuzzyFunctions) 
    (?*age* addTerm "young" (create$ 10.0 25.0) (create$ 1.0 0.0) 2)
    (?*age* addTerm "middle" (create$ 25.0 50.0) (create$ 1.0 0.0) 2)
    (?*age* addTerm "old" (create$ 50.0 100.0) (create$ 0.0 1.0) 2)

    
    (?*metal* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metal* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    (?*pop* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*pop* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    (?*rap* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*rap* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "young-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "young-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "young-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "young-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "young-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "young-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "young-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "young-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "old-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "old-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "old-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "old-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "old-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "old-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "old-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "old-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "middle-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "middle-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "middle-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "middle-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "middle-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "middle-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*poprecommendation* addTerm "middle-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "middle-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
   
    (assert (initialize))
    )

; create a user interaction screen.

(defrule userScreen  
    (initialize)
    =>
    (printout t "Hi. Welcome to the Music Recommendation System. Please enter your name and then press enter key> ")
    (bind ?name (readline))
    (printout t crlf " " crlf)
    (printout t " Hello, " ?name "." crlf)
    (printout t " Please answer the following questions and we will recommend you a song." crlf)
    (printout t " " crlf crlf)
	(printout t "What is your age range? (Enter "young" if your are 10-30, "middle" if you are 30-50, "old" if you are above 50.)"  crlf)
	(bind ?ag (readline))
    (printout t "How interested are you in Metal genre? (high/low)" crlf)
    (bind ?met (readline))
    (printout t "How interested are you in Pop genre? (high/low)" crlf)
    (bind ?pop (readline))
    (printout t "How interested are you in Rap genre? (high/low)" crlf)
    (bind ?rap (readline))
	(assert (age (new nrc.fuzzy.FuzzyValue ?*age* ?ag)))
    (assert (metal (new nrc.fuzzy.FuzzyValue ?*metal* ?met)))
    (assert (pop (new nrc.fuzzy.FuzzyValue ?*pop* ?pop)))
    (assert (rap (new nrc.fuzzy.FuzzyValue ?*rap* ?rap))))

; all the rules 
(defrule rule-1  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation1 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "young-all-low")))
    )
(defrule rule-2  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation2 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "young-pop")))
    )

(defrule rule-3  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation3 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "young-metal")))
    )

(defrule rule-4  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation4 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "young-rap")))
    )
 
(defrule rule-5  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation5 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "young-rap-pop")))
    )

(defrule rule-6   
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation6 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "young-metal-pop")))
    )

(defrule rule-7  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation7 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "young-metal-rap")))
    )

(defrule rule-8  
    (age ?a&:(fuzzy-match ?a "young"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation8 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "young-all-high")))
    )


(defrule rule-11  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation11 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "old-all-low")))
    )
(defrule rule-12  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation12 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "old-pop")))
    )

(defrule rule-13  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation13 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "old-metal")))
    )

(defrule rule-14  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation14 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "old-rap")))
    )

(defrule rule-15  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation15 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "old-rap-pop")))
    )

(defrule rule-16  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation16 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "old-metal-pop")))
    )

(defrule rule-17  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation17 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "old-metal-rap")))
    )

(defrule rule-18  
    (age ?a&:(fuzzy-match ?a "old"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation18 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "old-all-high")))
    )

(defrule rule-21  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation21 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "middle-all-low")))
    )
(defrule rule-22  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation22 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "middle-pop")))
    )

(defrule rule-23  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation23 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "middle-metal")))
    )

(defrule rule-24  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation24 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "middle-rap")))
    )

(defrule rule-25  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation25 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "middle-rap-pop")))
    )

(defrule rule-26  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (recommendation26 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "middle-metal-pop")))
    )

(defrule rule-27  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation27 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "middle-metal-rap")))
    )

(defrule rule-28  
    (age ?a&:(fuzzy-match ?a "middle"))
    (pop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (recommendation28 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "middle-all-high")))
    )
; recommended music based on the rules
(defrule Recom1  
    (recommendation1 ?i&:(fuzzy-match ?i "young-all-low"))
    =>
    (printout t "Closer" crlf))

(defrule Recom2  
    (recommendation2 ?i&:(fuzzy-match ?i "young-pop"))
    =>
    (printout t "Kabira" crlf))

(defrule Recom3  
    (recommendation3 ?i&:(fuzzy-match ?i "young-metal"))
    =>
    (printout t "Comfortably Numb" crlf))

(defrule Recom4  
    (recommendation4 ?i&:(fuzzy-match ?i "young-rap"))
    =>
    (printout t "Rockstar" crlf))
 
(defrule Recom5  
    (recommendation5 ?i&:(fuzzy-match ?i "young-rap-pop"))
    =>
    (printout t "Paris" crlf))

(defrule Recom6 

    (recommendation6 ?i&:(fuzzy-match ?i "young-metal-pop"))
    =>
    (printout t "Shape of your body" crlf))

(defrule Recom7 

    (recommendation7 ?i&:(fuzzy-match ?i "young-metal-rap"))
    =>
    (printout t "Stars" crlf))

(defrule Recom8 

    (recommendation8 ?i&:(fuzzy-match ?i "young-all-high"))
    =>
    (printout t "Somwhere I belong" crlf))


(defrule Recom11 

    (recommendation11 ?i&:(fuzzy-match ?i "old-all-low"))
    =>
    (printout t "Endless Summer Stars" crlf))

(defrule Recom12 

    (recommendation12 ?i&:(fuzzy-match ?i "old-pop"))
    =>
    (printout t "Destiny" crlf))

(defrule Recom13 

    (recommendation13 ?i&:(fuzzy-match ?i "old-metal"))
    =>
    (printout t "Sandcastles" crlf))

(defrule Recom14 

    (recommendation14 ?i&:(fuzzy-match ?i "old-rap"))
    =>
    (printout t "Apologize" crlf))

(defrule Recom15 

    (recommendation15 ?i&:(fuzzy-match ?i "old-rap-pop"))
    =>
    (printout t "All of me" crlf))

(defrule Recom16 

    (recommendation16 ?i&:(fuzzy-match ?i "old-metal-pop"))
    =>
    (printout t "Numb" crlf))

(defrule Recom17 

    (recommendation17 ?i&:(fuzzy-match ?i "old-metal-rap"))
    =>
    (printout t "In the end" crlf))

(defrule Recom18 

    (recommendation18 ?i&:(fuzzy-match ?i "old-all-high"))
    =>
    (printout t "castle of glass" crlf))



(defrule Recom21 

    (recommendation21 ?i&:(fuzzy-match ?i "middle-all-low"))
    =>
    (printout t "Broken Dreams" crlf))

(defrule Recom22 

    (recommendation22 ?i&:(fuzzy-match ?i "middle-pop"))
    =>
    (printout t "Brick in the wall" crlf))

(defrule Recom23 

    (recommendation23 ?i&:(fuzzy-match ?i "middle-metal"))
    =>
    (printout t "Underneath the sky" crlf))

(defrule Recom24 

    (recommendation24 ?i&:(fuzzy-match ?i "middle-rap"))
    =>
    (printout t "Come alive" crlf))

(defrule Recom25 

    (recommendation25 ?i&:(fuzzy-match ?i "middle-rap-pop"))
    =>
    (printout t "Lost in time" crlf))

(defrule Recom26 

    (recommendation26 ?i&:(fuzzy-match ?i "middle-metal-pop"))
    =>
    (printout t "Summer" crlf))

(defrule Recom27 

    (recommendation27 ?i&:(fuzzy-match ?i "middle-metal-rap"))
    =>
    (printout t "8 Miles" crlf))

(defrule Recom28 

    (recommendation28 ?i&:(fuzzy-match ?i "middle-all-high"))
    =>
    (printout t "Lie to me" crlf))

(run)