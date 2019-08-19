(* t -> (year * month * day) *)
type t = int * int * int

(* 1 *)
fun is_older (d1: t, d2: t) = 
  let
    val year1 = #1 d1
    val year2 = #1 d2
    val month1 = #2 d1
    val month2 = #2 d2
    val day1 = #3 d1
    val day2 = #3 d2
  in
    if year1 < year2 then true
    else if year1 = year2 andalso month1 < month2 then true
    else if year1 = year2 andalso month1 = month2 andalso day1 < day2 then true
    else false
  end
(* 2 *)
fun number_in_month (dates: t list, month: int) =
  if null dates then 0
  else
    if let val date = hd(dates) in #2 date = month end 
    then 1 + number_in_month(tl(dates), month)
    else number_in_month(tl(dates), month) 
(* 3 *)
fun number_in_months (dates: t list, months: int list) = 
  if null months then 0
  else 
    let 
      val result = number_in_month(dates, hd(months))
      val months' = tl months
       in
         if result <> 0
         then 1 + number_in_months(dates, months')
         else number_in_months(dates, months')
       end

(* 4 *)
fun dates_in_month (dates: t list, month: int) = 
  if null dates then []
  else 
    if let val date = hd(dates) in #2 date = month end  
    then hd(dates)::dates_in_month(tl(dates), month)
    else
      dates_in_month(tl(dates), month)
(* 5 *) 
fun dates_in_months(dates: t list, months: int list) = 
  if null months then []
  else
    let
      val result = dates_in_month(dates, hd months)
      val months' = tl months
    in 
      if null result = false
      then result@dates_in_months(dates, months')
      else dates_in_months(dates, months')
    end
 
(* 6 *)
fun get_nth (xs: string list, n: int) = 
  if n = 1 then hd xs
  else get_nth(tl xs, n - 1)

(* 7 *)
val months = [ "January", "February", "March", "April","May", "June", "July", "August", "September", "October", "November", "December"]

fun date_to_string (date: t) = 
  let 
    val i = #2 date 
    val str = Int.toString
  in 
    get_nth(months, i) ^ " " ^ str(#3 date) ^ ", " ^ str(#1 date)
  end

(* 8 *)
fun number_before_reaching_sum(sum: int, xs: int list) = 
  if sum <= 0
  then ~1
  else 1 + number_before_reaching_sum((sum - hd xs), tl xs)

(* 9 *)
fun what_month(days: int) = 
  let
    val months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  in
    1 + number_before_reaching_sum(days, months)
  end

(* 11 *)
(*
fun oldest(dates: t list) = 
  if null dates
  then NONE
  else
    let val nextVal = oldest(tl dates)
    in if isSome nextVal andalso is_older(hd dates, valOf(nextVal)) <> true
       then nextVal
       else SOME (hd dates)
    end
 *)

fun oldest(dates: t list) = 
  if null dates
  then NONE
  else let
    fun oldest_nonempty (dates: t list) = 
      if null (tl dates)
      then hd dates
      else let val tl_ans = oldest_nonempty(tl dates)
           in 
             if is_older(hd dates, tl_ans)
             then hd dates
             else tl_ans
           end
       in
         SOME (oldest_nonempty dates)
       end

