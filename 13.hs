import Data.Numbers.Primes
import Data.List

main = print $ length [a | a<-candidates, a>11,a`div`100 /= a`mod`10, elem ((read . reverse . show) a) candidates] where candidates = takeWhile (<=1000) primes
