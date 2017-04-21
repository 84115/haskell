cardNumber :: [Integer]
cardNumber = [4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

doubleOtherNumber :: [Integer] -> [Integer]
doubleOtherNumber = zipWith ($) (cycle [id, (*2)])

cardNumberFinal :: [Integer]
cardNumberFinal = reverse $ doubleOtherNumber $ reverse cardNumber

checksum :: Integer
checksum = sum cardNumberFinal

remainingZero :: Integral a => a -> Bool
remainingZero n = n `div` 100 == 0

validate :: Integer -> Bool
validate n = if remainingZero n then True else False

result = validate checksum

