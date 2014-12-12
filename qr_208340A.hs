import Data.List

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]
    
primeFactors n = factor n primes
  where
    factor n (prime:primes)
      | prime*prime > n = [n]
      | n `mod` prime == 0 = prime:factor(n`div`prime) (prime:primes)
      | otherwise = factor n primes

main = print $ map (\x->maximum $ primeFactors $ read x::Int) $ permutations "123456789" --minimum [largest | map (\x -> read x::Int) $ permutations "123", let largest=maximum $ primeFactors a]