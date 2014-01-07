open DirectFD;;

let tests = [(1,"1_abc");(2,"2_def");(3,"3_ghi");(4,"4_jkl")];;
List.map (fun (i,x)->Unix.write (fd i) x 0 5) tests;;
List.map (fun (i,x)->output_string (Unix.out_channel_of_descr (fd i)) x) tests;;
