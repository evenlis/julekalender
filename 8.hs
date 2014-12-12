import Math.NumberTheory.Primes.Factorisation
import Data.Set

main :: IO()
main = print $ [a | a<-[1..9999], a == sum [b | b<-[1..a`quot`2], a `mod` b==0]] -- (sum $ toList $ deleteMax $ divisors a)]
