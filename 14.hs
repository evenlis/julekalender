main = print $ length [a | a<-[0..100000], (show a) == (flip $ show a)]
       where flip (x:[]) = case (x) of {'1'->"1"; '6'->"9"; '9'->"6"; '8'->"8"; '0'->"0"; _->"\0"}
             flip (x:xs) = flip xs ++ flip [x]
