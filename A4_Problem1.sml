fun newList(x,y,xys,index) = List.nth(x,index)::List.nth(y,index)::xys;

fun alternate(x,y) = 
	let
		fun aux (x,y,xys,~1) = xys
			| aux(x,y,xys,index) = aux(x,y,newList(x,y,xys,index),index - 1)
	in
		aux(x,y,[],List.length(x) - 1)
	end;

alternate([1,3,5], [2,4,6]);