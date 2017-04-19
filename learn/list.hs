lostNumbers = [4,8,15,16,23,42]

indexValue = "Steve Buscemi" !! 6 -- B

nested = [
    [1,2,3,4],
    [5,3,3,3],
    [1,2,2,3],
    [1,2,3,1]]

more1 = [3,2,1] > [2,1,0]
more2 = [3,2,1] > [2,10,100]
less1 = [1,2,3] < [100,12,8]
same1 = [1] == [1]

head' = head [5,4,3,2,1]
tail' = tail [5,4,3,2,1]

-- Omit Brackets Using $
-- take 1 (reverse [1,2,3])
-- take 1 $ reverse [1,2,3]

-- List Comprehension
doubleNumbersBetweenOneAndTen = [x*2 | x <- [1..10]]

-- Add a condition to your comprehension
doubleNumbersBetweenOneAndTenWhileOutputLargerThanTwelve = [x*2 | x <- [1..10], x*2 >= 12]

-- Insert FizzBuzz Here

