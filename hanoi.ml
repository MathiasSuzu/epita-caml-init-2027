(* displays moves: source -> destination *)

let move source destination =
  print_int source ;
  print_string " -> " ;
  print_int destination ;
  print_newline()
;;

let hanoi n =
  let rec play n source destination =
    if n = 1 then () else
      begin
        move source destination;
        move source (destination-1);
        move destination (source+1);
        play (n-1) source destination
      end
  in
  if n < 0 then
    invalid_arg "Hanoi: number of disks invalid"
  else
    play n 1 3;;


hanoi 3 ;;