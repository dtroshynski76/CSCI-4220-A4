fun crossProduct(listA,listB) =
	let
		fun aux([],b,ret) = ret
			| aux(a,b,ret) = 
				let
					val aLength = List.length(a);
					val aItem = List.nth(a, aLength - 1);
					val aLessEnd = List.take(a,aLength - 1);
					val mappedList = List.map (fn x => (aItem,x)) listB;
				in
					aux(aLessEnd,b,mappedList @ ret)
				end;
	in
		aux(listA,listB,[])
	end;
	
Control.Print.printLength := 500;
crossProduct(["A","K","Q","J","10","9","8","7","6","5","4","3","2"],["spade","heart","diamond","club"]);
crossProduct([1,2,3],[1,2,3]);