fatorial :: Integer -> Integer
fatorial  n
    |n == 0 || n == 1 = 1
	|n > 0 = n*fatorial(n-2)
	|otherwise = 0

divisao :: IO()
divisao = do
	putStrLn "digite o dividendo:"
	dividendo <- readLn :: IO Float
	putStrLn "digite o dividor:"
	divisor <- readLn :: IO Float
	putStrLn "alguma coisa vazia" 


potencia :: Int -> Int -> Int -> String 
potencia base expoente
	|expoente == 0 = 1
	|expoente >= 1 = base * potencia base (expoente-1)
	|otherwise = 0




