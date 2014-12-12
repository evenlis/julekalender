main = print $ ans [1..1500] where ans a = case (a) of {a:[] -> a; a:_:xs -> ans (xs ++ [a])}
