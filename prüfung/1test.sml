use "../1.sml";

val test1 = is_older((1992, 10, 14), (1993, 3, 31)) = true
val test2 = is_older((2016, 9, 16), (2016, 9, 31)) = true
val test3 = is_older((1990, 5, 25), (1988, 3, 16)) = false
val test4 = is_older((2016, 9, 16), (2016, 10, 14)) = true

val test5 = number_in_month([(2006, 9, 16), (1993, 9, 09), (2012, 10, 12)], 9) = 2
val test6 = number_in_month([(2006, 10, 16), (1993, 9, 09), (2012, 10, 12)], 9) = 1
val test7 = number_in_month([(2006, 10, 16), (1993, 10, 09), (2012, 10, 12)], 10) = 3

val test8 = number_in_months([(2006, 9, 16), (1993, 10, 09), (2012, 10, 12)],
 [9, 10]) = 3

val test9 = get_nth(["s", "m", "l"], 2) = "l"
val test10 = get_nth(["s", "m", "l"], 0) = "s"

val test11 = date_to_string((1993, 3, 31)) = "March 31, 1993"
