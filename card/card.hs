evens = if  (x % 2 == 0) then x * 2 else x

cardNumber = [4,1,9,4,6,5,2,6,9,8,2,7,2,1,9]

cardNumberMulti = [x * 2 | x <- cardNumber]

checksum = sum cardNumberMulti 

