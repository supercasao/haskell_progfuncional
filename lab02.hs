-- ******** questão 1 ********

-- usando if then else 

ordena :: Int -> Int -> (Int, Int)
ordena x y = if x <= y then (x, y) else (y, x)

-- usando guardas

ordena2 :: Int -> Int -> (Int, Int)
ordena2 x y
    | x <= y    = (x, y)
    | otherwise = (y, x)


-- ******** questão 2 ********

mesPorNumeroGuarda :: Int -> String
mesPorNumeroGuarda num
    | num == 1  = "Janeiro"
    | num == 2  = "Fevereiro"
    | num == 3  = "Marco"
    | num == 4  = "Abril"
    | num == 5  = "Maio"
    | num == 6  = "Junho"
    | num == 7  = "Julho"
    | num == 8  = "Agosto"
    | num == 9  = "Setembro"
    | num == 10 = "Outubro"
    | num == 11 = "Novembro"
    | num == 12 = "Dezembro"
    | otherwise = "Erro!"

--Usando Expressão Case:

mesPorNumeroCase :: Int -> String
mesPorNumeroCase num = case num of
    1  -> "Janeiro"
    2  -> "Fevereiro"
    3  -> "Março"
    4  -> "Abril"
    5  -> "Maio"
    6  -> "Junho"
    7  -> "Julho"
    8  -> "Agosto"
    9  -> "Setembro"
    10 -> "Outubro"
    11 -> "Novembro"
    12 -> "Dezembro"
    _  -> "Erro!"

-- ******** questão3 ********

tipoTriangulo :: Double -> Double -> Double -> String
tipoTriangulo a b c
    | a <= 0 || b <= 0 || c <= 0 = "Não é um triângulo"
    | a + b <= c || b + c <= a || c + a <= b = "Não é um triângulo"
    | a == b && b == c = "Equilátero"
    | a == b || b == c || c == a = "Isósceles"
    | otherwise = "Escaleno"

-- ******** questão4 ********

maiorSomaQuadradosOuQuadradoSoma :: Double -> Double -> Double
maiorSomaQuadradosOuQuadradoSoma x y =
    let somaQuadrados = x^2 + y^2
        quadradoSoma = (x + y)^2
    in if somaQuadrados >= quadradoSoma then somaQuadrados else quadradoSoma


-- ******** questao 5 ********

menuCadastro :: IO ()
menuCadastro = do
    putStrLn "Cadastro de Aluno"
    putStr "Nome: "
    nome <- getLine
    putStr "Número de Matrícula: "
    matricula <- getLine
    putStr "Nota: "
    notaStr <- getLine
    let nota = read notaStr :: Double
    putStrLn $ "Aluno: " ++ nome ++ " - Matrícula: " ++ matricula ++ " - Nota: " ++ show nota

main :: IO ()
main = do
    menuCadastro

