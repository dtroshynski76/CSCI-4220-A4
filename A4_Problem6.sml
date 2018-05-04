fun powerset([]) = []
	| powerset([item]) = [[item],[]]
	| powerset (x::xs) =
		let
			val subset = powerset(xs);
		in
			(List.map (fn y => x::y) subset) @ subset
		end;
	
Control.Print.printLength := 500;
powerset([1,2,3,4]);