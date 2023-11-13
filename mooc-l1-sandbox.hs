-- [x] 1.9.2 Local Definition [x]
-- where
circleArea :: Double -> Double
circleArea r = pi * rsquare
    where pi      = 3.1415926
          rsquare = r * r
          -- local definitions can also be functions: 
          -- rsquare x = x * x

{- implementation with let...in
circleArea r = let pi = 3.1415926
                   rsquare = r * r
               in pi * rsquare
-}

-- [x] 1.9.4 Pattern Matching [x]
greet :: String -> String -> String
greet "Finland" name = "Hei, " ++ name
greet "Italy"   name = "Ciao, " ++ name
greet _         name = "Hello, " ++ name -- default case
    -- Patterns are matched in order, so it is important to
    -- put the default case _ last, else it would be selected
    -- for all inputs.

-- show turns almost anything into a string.
describe :: Integer -> String
describe 0 = "zero"
describe 1 = "one"
describe 2 = "an even prime"
describe n = "the number " ++ show n
-- Note that the default case here uses the value, instead of ignoring w/ _

login :: String -> String -> String
login "testUser123" "password123" = "testUser123 logged in"
login "testUser123" _             = "wrong password"
login _             _             = "unknown user"

--[x] 1.9.5 Recursion [x]
-- Example: in maths, the definition of factorial is:
-- n! = n * (n-1) * ... * 1
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n-1)
    {- note: We use ==> to mean "evaluates to"
    factorial 3
    ==> 3 * factorial (3-1)
    ==> 3 * factorial 2
    ==> 3 * 2 * factorial 1
    ==> 3 * 2 * 1
    ==> 6
    -}

