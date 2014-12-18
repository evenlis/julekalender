import Data.List
import Data.Function

first_match :: Eq a => (a, b) -> (a, b) -> Bool
first_match = (==) `on` fst

histogram :: Ord a => [a] -> [(a, Int)]
histogram = let item x = (head x, length x) in map item . group . sort

anagrams :: Ord a => [[a]] -> [[[a]]]
anagrams x = map (map snd) $ filter (not . null . drop 1) $
             groupBy first_match $ sort $ zip (map histogram x) x

main = do
  file <- readFile "words.txt"
  let words = lines file
  print $ take 10 $ map (sort . head) $ sortBy (\a b -> compare (length b) (length a)) $ anagrams words
