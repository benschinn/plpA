use "/Users/ben.schinn/projects/mooc/plpA/2.sml";

val test1 = all_except_option ("string", ["string"]) = SOME []
(*
val test2 = get_substitutions1 ([["foo"],["there"]], "foo") = []

val test3 = get_substitutions2 ([["foo"],["there"]], "foo") = []

val test4 = similar_names([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]],{first="Fred", middle="W", last="Smith"}) =
    [{first="Fred", last="Smith", middle="W"}, {first="Fredrick",last="Smith", middle="W"},
     {first="Freddie", last="Smith", middle="W"}, {first="F",last="Smith", middle="W"}]

val test5 = card_color (Clubs, Num 2) = Black

val test6 = card_value (Clubs, Num 2) = 2

val test7 = remove_card ([(Hearts, Ace)], (Hearts, Ace), IllegalMove) = []

val test8 = all_same_color [(Hearts, Ace), (Hearts, Ace)] = true

val test9 = sum_cards [(Clubs, Num 2),(Clubs, Num 2)] = 4

val test10 = score ([(Hearts, Num 2),(Clubs, Num 4)],10) = 4

val test11 = officiate ([(Hearts, Num 2),(Clubs, Num 4)],[Draw], 15) = 6

val test12 = officiate ([(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)],
                        [Draw,Draw,Draw,Draw,Draw],
                         42)
           = 3

val test13 = ((officiate([(Clubs,Jack),(Spades,Num(8))],
                         [Draw,Discard(Hearts,Jack)],
                          42);
               false) 
              handle IllegalMove => true)

 *)
