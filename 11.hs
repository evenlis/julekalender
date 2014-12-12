import Data.List

primeFactors n = factor n primes
  where
    factor n (prime:primes)
      | prime*prime > n = [n]
      | n `mod` prime == 0 = prime:factor(n`div`prime) (prime:primes)
      | otherwise = factor n primes

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

chainStream nPrimes = map (sum . take nPrimes) $ tails primes
siftPrimes primeNums chain = filter (\x -> elem x $ takeWhile (<= x) chain) primeNums
findFirst = head . foldr1 (siftPrimes) . map chainStream
main = print $ findFirst [7,17,41,541]
