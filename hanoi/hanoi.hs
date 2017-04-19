-- NOT MY CODE
-- Taken From: http://bit.ly/2o38881

type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _          = []
hanoi 1 start end _    = [(start, end)]
hanoi n start end temp =
    let nMinusOne = subtract 1 n
    in hanoi nMinusOne start temp end ++
        hanoi 1 start end temp ++
        hanoi nMinusOne temp end start

game = hanoi 2 "a" "b" "c"

