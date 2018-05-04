(* minus: int list * int list -> int list *)

fun isMember(x,[]) = false
	| isMember(x,b::y) = if x = b then true else isMember(x,y);

fun intersection([],y) = []
	| intersection(a::x,y) = if isMember(a,y) then a::intersection(x,y) else intersection(x,y);

fun removeDuplicates [] = []
	| removeDuplicates(cL::cLs) = cL::removeDuplicates(List.filter (fn x => x <> cL) cLs);

fun isInB(value: int,b: int list) = List.exists (fn x => x = value) b;

fun minus(aList, bList) =
	let
		val concat = removeDuplicates(intersection(aList,bList));
		val filtered = List.filter (fn a => isInB(a,bList)) concat;
	in
		filtered
	end;

minus([1,1,1,2,2],[1,1,2,3]); (*expected output: [1,2]*)
minus([1,1,2,3],[1,1,1,2,2]); (*expected output: [3]*)