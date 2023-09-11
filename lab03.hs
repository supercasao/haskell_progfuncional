--Exercicio 1--
--A
xor1 :: Bool -> Bool -> Bool
xor1 a b = (a || b) && not (a && b)

--B
xor2 :: Bool -> Bool -> Bool
xor2 a b = a /= b

--C
xor3 :: Bool -> Bool -> Bool
xor3 a b = if a then not b else b

--D
xor4 :: Bool -> Bool -> Bool
xor4 a b
    | a && not b = True
    | not a && b = True
    | otherwise   = False


--Exercicio 2--
numPar :: Int -> Bool
numPar x =
    if x `mod` 2 == 0
    then True
    else False

--Exercicio 3--

numImpar :: Int -> Bool
numImpar x =
    if x == 1 || x `mod` 2 /= 0
    then True
    else False

--Exercicio 4--

numMaior :: Int -> Int -> Int 
numMaior x y =
	if x > y 
	then x
	else y

--Exercicio 5--

areaCirculo:: Float -> Float
areaCirculo diametro = pi * raio **2
	where raio = diametro / 2.0

--Exercicio 6--

numRaizes :: Double -> Double -> Double -> Int
numRaizes a b c
  | discriminante > 0 = 2
  | discriminante == 0 = 1
  | otherwise = 0
  where
    discriminante = b * b - 4 * a * c

--Exercicio 7--

menu :: Int -> Int -> Int -> IO ()
menu a b op
  | op == 1 = putStrLn $ "Resultado: " ++ show (a + b)
  | op == 2 = putStrLn $ "Resultado: " ++ show (abs (a - b))
  | op == 3 = putStrLn $ "Resultado: " ++ show (a * b)
  | op == 4 = if b /= 0
                then putStrLn $ "Resultado: " ++ show (max a b `div` min a b)
                else putStrLn "Resultado: -1"
  | otherwise = putStrLn "Resultado: -1"

