start = 1
limit = 12

range = [start..limit]

times multiplier = [x * multiplier | x <- range]

table = [(x * start, times x) | x <- range]

