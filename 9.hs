import Control.Monad
import Data.List
main = print $ head $ [minimum [a,b] | a<-[234..987], b<-[1000-a..987], valid a b] where valid a b = (sort $ show a ++ show b ++ show (a+b)) == "0123456789"
