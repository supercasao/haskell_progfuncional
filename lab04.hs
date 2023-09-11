-- ex01

inverso :: IO()
inverso = do
	putStrLn "insira a frase"
	string1 <- getLine
	let string2 = reverse string1
	if string1 == string2
		then putStrLn "palindromo"
	else 
		putStrLn "n eh palindromo"

-- ex02

multiplicacao:: IO()
multiplicacao = do 
	putStrLn "numero 1"
	x1 <- readLn :: IO Float
	putStrLn "numero 2"
	x2 <- readLn :: IO Float
	putStrLn "numero 3"
	x3 <- readLn :: IO Float

	let multiplicacao = x1 * x2 * x3

	putStrLn ("o resultado eh: " ++ show multiplicacao)

-- ex03

celsius :: IO()
celsius = do 
	putStrLn "Insira a temperatura em Fahrenheit: "
	tempFahrenheit <- readLn :: IO Double

	let celcius = 5*(tempFahrenheit - 32)/9

	putStrLn (show tempFahrenheit ++ " essa temperatura em celcius seria:" ++ show celcius)

-- ex04

nota :: Float -> Float -> Float -> String
nota x1 x2 x3
	| nota > 7 = "aprovado"
	| nota >= 3 && nota <= 7 = "exame especial"	
	| nota < 3 = "reprovado"
	where nota = (x1 + x2 + x3)/3

-- ex05

calcularClasseEleitoral :: Int -> String
calcularClasseEleitoral idade
    | idade < 16 = "não eleitor"
    | idade >= 16 && idade < 18 = "eleitor facultativo"
    | idade >= 18 && idade <= 65 = "eleitor obrigatório"
    | idade > 65 = "eleitor facultativo"
    | otherwise = "Idade inválida"

-- ex06
