double :: Num a => a -> a
double x = x * 2

doublePair x y = x * 2 + y * 2

doubleSmall :: (Num a, Ord a) => a -> a
doubleSmall x = if x > 100 then x else x * 2

conanO'Brien :: [Char]
conanO'Brien = "It's a-me, Conan O'Brien!"

it'sA :: [Char] -> [Char]
it'sA name = take 10 (cycle conanO'Brien) ++ " " ++ name

mario :: [Char]
mario = it'sA "Mario"

firstChar string = string !! 0

comprehensionDouble = [x*2 | x <- [1..10]]

obj=zip ["a","b","c","d","e"] [1..]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

feelingLucky :: (Integral a) => a -> String
feelingLucky 7 = "LUCKY NUMBER SEVEN!"
feelingLucky x = "Sorry, you're out of luck, pal!"

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

max4 :: (Num a, Ord a) => a -> a
max4 n = (max 4) n

comprehension :: (Enum t1, Num t1) => (t1 -> t) -> [t]
comprehension func = [func x | x <- [1..10]]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."

