fun posIntegerSquare x = x*x;
fun posIntegerCube x = x*x*x;

fun finiteListRepresentation(funct,number) = 
	let
		fun aux(ret,0) = ret
			| aux(ret,num) = aux((num,funct num)::ret,num - 1)
	in
		aux([],number)
	end;

finiteListRepresentation(posIntegerSquare,5);
finiteListRepresentation(posIntegerCube,10);