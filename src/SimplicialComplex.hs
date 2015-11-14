module SimplicialComplex
    where

-- import Control.Applicative
-- import qualified Control.Monad as M
-- import  Control.Monad.ST
-- import qualified Data.Vector as V
-- import qualified Data.Vector.Algorithms.Intro as VA
-- import qualified Data.Vector.Generic as G
-- import qualified Data.Vector.Unboxed as U

data Simplex a = Empty | Edge [a] [a] | Simplex (Edge [a]  [a]) (Edge [a] [a])
                 deriving (Show,Num)

-- euclidDist ::  U.Vector Double -> U.Vector Double -> Double
-- euclidDist xs ys = norm' xs + norm' ys - U.sum (dot' xs ys)
--   where
--     norm' = U.sum . join dot'
--     dot' = U.zipWith (*)
