done = return ()

haskellcg_putStrLn :: String -> IO ()
haskellcg_putStrLn xs = foldr (>>) done (map putChar xs) >> 
                        putChar '\n'

main = do putStrLn "Hello World!"
          putChar 'X'
          putChar '\n'
          haskellcg_putStrLn "My Print Function"
          x <- readLn
          if x == 4 
            then putStrLn "world"
            else putStrLn "wrong"
