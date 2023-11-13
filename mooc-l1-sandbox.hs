-- 1.9.2 local definition
-- where
circleArea :: Double -> Double
circleArea r = pi * rsquare
    where pi = 3.1415926
          rsquare = r * r

{- implementation with let...in
circleArea r = let pi = 3.1415926
                   rsquare = r * r
               in pi * rsquare
-}

