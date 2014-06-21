import Control.Monad

main = 	do
	putStrLn "1:Gyuudon ->Weight 2:Weight ->Gyuudon"
	yournumber <- getLine
	when (yournumber == "1") $ do
		putStrLn"Enter Gyuudon"
		gyuudonIO <- getLine 
		let gyuudon = (read gyuudonIO ::Gyuudon) 
		print(g2w gyuudon)
		getLine
		main
	when (yournumber == "2") $ do 
		putStrLn"Enter Weight"
		weightIO <- getLine 
		let weight = (read weightIO ::Weight) 
		print(w2g weight)
		getLine
		main

type Gyuudon = Double
type Weight = Double

g2w :: Gyuudon -> Weight 
g2w gyuudon = gyuudon * 100.0

w2g :: Weight -> Gyuudon 
w2g weight = weight / 100.0