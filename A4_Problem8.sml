(*update: (''a * 'b) list * (''a * 'b) → (''a * 'b) list *)

fun extractFirst((x,y)) = x;

fun replaceTuple(flr,(x,y)) = List.map (fn z => if extractFirst(z) = x then (x,y) else z) flr;

fun update(flr,pair) =
	let
		val existsInFlr = List.exists (fn x => extractFirst(x) = extractFirst(pair)) flr;
		val ret = if existsInFlr then replaceTuple(flr,pair) else flr @ pair::[];
	in
		ret
	end;

(*update([(1,1),(2,4),(3,9),(4,16),(5,25)],(2,3));
update([(1,1),(2,4),(3,9),(4,16),(5,25)],(6,36));*)
update(update([(1,1),(2,4),(3,9),(4,16),(5,25)],(2,3)),(6,36));