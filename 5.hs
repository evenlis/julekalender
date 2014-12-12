import Data.List

allPermutations [] = [[]]
allPermutations xs = concatMap (\x -> map (x:) $ allPermutations $ delete x xs) xs


primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

primeFactors n = factor n primes
  where
    factor n (prime:primes)
      | prime*prime > n = [n]
      | n `mod` prime == 0 = prime:factor(n`div`prime) (prime:primes)
      | otherwise = factor n primes

main = print $ minimum $ map (\x->maximum $ primeFactors $ read x::Int) $ allPermutations "123456789"
