(* t -> (year * month * day) *)
type t = int * int * int

(* 1 *)
fun is_older (d1 : t, d2: t) =
  if d1 = d2 then false 
  else 
    if #1 d1 <  #1 d2 then true 
    else if #2 d1 <  #2 d2 then true 
    else if #3 d1 <  #3 d2 then true 
    else false

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
      val d = hd(dates)
      val m = hd(months)
      val ds = tl(dates)
      val ms = tl(months)
    in 
      if #2 d = m
      then 1 + number_in_month(dates, m)
      else number_in_months(ds, ms)
    end


(* 4 *)
fun dates_in_month (dates: t list, month: int) = 
  if null dates then []
  else 
    if let val date = hd(dates) in #2 date = month end  
    then hd(dates)::dates_in_month(tl(dates), month)
    else
      dates_in_month(tl(dates), month)
 
(* 6*)
fun get_nth (xs: string list, n: int) = 
  if n = 1 then hd xs
  else get_nth(tl xs, n - 1)

(* 7*)
val months = [ "January", "February", "March", "April","May", "June", "July", "August", "September", "October", "November", "December"]

fun date_to_string (date: t) = 
  let 
    val i = #2 date 
    val str = Int.toString
  in 
    get_nth(months, i) ^ " " ^ str(#3 date) ^ ", " ^ str(#1 date)
  end
