import System.Random

main :: IO ()
main = do
  putStrLn "******************************"
  putStrLn "seja bem vindo ao jogo do Super Casão, advinhe!"
  putStrLn "****************************** \n "
  funcaoAleatoria

funcaoAleatoria :: IO ()
funcaoAleatoria = do
  numAIeatorio <- randomRIO (1, 100) :: IO Int

  let rounds = 1
    
  putStrLn "escolha a dificuldade:"
  putStrLn "(1) - facil - 10 chances"
  putStrLn "(2) - medio - 7 chances"
  putStrLn "(3) - dificil - 5 chances"

  dificuldade <- readLn :: IO Int
  let totalchutes = case dificuldade of
        1 -> 10
        2 -> 7
        3 -> 5
        _ -> error "invalido!."

  jogar numAIeatorio rounds totalchutes 

jogar :: Int -> Int -> Int -> IO ()
jogar numAIeatorio round totalchutes
  | round > totalchutes = putStrLn $ "acabou o jogo!, o numero aleatorio era:" ++ show numAIeatorio
  | otherwise = do
      putStrLn $ "round = " ++ show round ++ " de " ++ show totalchutes
      putStrLn "bota um numero entre 1 e 100: "
      chute <- readLn :: IO Int

      if chute < 1 || chute > 100
        then do
          putStrLn "entre 1 e 100, entendeu não? voce possui um (QI)^-1 \n"
          jogar numAIeatorio round totalchutes
        else do
          let acertou = numAIeatorio == chute
              maior = numAIeatorio > chute

          if acertou
            then putStrLn  "acertou mizeravi, fez congratulatio!"
            else do
              if maior
                then putStrLn "erouuuuuuuu, o numero aleatorio eh maior.\n"
                else putStrLn "erouuuuuuuu, o numero aleatorio eh menor.\n"
              jogar numAIeatorio (round + 1) totalchutes
