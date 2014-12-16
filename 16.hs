import Data.List
main = print $ head [exp | exp<-[17..], let num = 2^exp, "472047" `elem` (map (take 6) $ tails $ show num)]
