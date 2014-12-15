import Data.List
main = print $ length [c | a<-[10..99], b<-[a..99], let c = a*b, c>999, (sort $ show c) == sort ((show a) ++ (show b)), a`mod`10 + b`mod`10 > 0]
