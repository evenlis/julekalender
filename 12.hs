import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

main :: IO ()
main = print $ length [1 | y<-[1337..2014], m<-[1..12], ((==5) . day . toWeekDate) $ fromGregorian y m 13] where day (_,_,a) = a
