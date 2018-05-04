fun removeDuplicates [] = []
	| removeDuplicates(cL::cLs) = cL::removeDuplicates(List.filter (fn x => x <> cL) cLs);

fun union(x,y) = removeDuplicates(x @ y);

union(["a","b","b"],["c","b"]);