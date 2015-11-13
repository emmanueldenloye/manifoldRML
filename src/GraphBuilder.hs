module GraphBuilder
       (buildGraphTest)
       where

import Data.Graph.Inductive
import qualified Data.Graph.Inductive.PatriciaTree as GP

buildGraphTest
  :: (Foldable t)
  => (a -> Context a1 b)
  -> t a
  -> GP.Gr a1 b
buildGraphTest f = foldr ((&) . f) empty
