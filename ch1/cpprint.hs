{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -pgmP /usr/bin/cpp #-}

#define showExpr(e) (#e ++ "   ->   " ++ show (e))

main :: IO ()
main = do
  putStrLn showExpr(2 + 2 == 5)

-- haskell-irc kmc
