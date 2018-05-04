fun isMember(x,[]) = false
	| isMember(x,b::y) = if x = b then true else isMember(x,y);

fun intersection([],y) = []
	| intersection(a::x,y) = if isMember(a,y) then a::intersection(x,y) else intersection(x,y);
	
fun multiSetIntersection(setList) =
	let
		val length = List.length(setList);
		val penultimate = List.nth(setList,length - 2);
		fun aux(xs,intersectedList,~1) = intersectedList
			| aux(xs,intersectedList,index) = 
				let
					val interList = intersection(intersectedList, List.nth(xs,index));
				in
					aux(xs,interList,index - 1)
				end;
	in
		aux(setList,penultimate,length - 1)
	end;
	
multiSetIntersection([[2,3,4],[4,5], [1,2,3,4],[2,4,6,8]]);