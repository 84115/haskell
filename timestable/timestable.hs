-- Where the timestable starts
start :: Integer
start = 1

-- Where the timestable ends
limit :: Integer
limit = 12

-- The range of the timestable
range :: [Integer]
range = [start..limit]

-- This function will create a list based
-- on the multiplier value and will
-- multiply it for each item in the range
times :: Integer -> [Integer]
times multiplier = [x * multiplier | x <- range]

-- Comprehends the timestables values into a table
table :: [(Integer, [Integer])]
table = [(x * start, times x) | x <- range]

