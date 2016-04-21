module Pux.CSS (module CSS, css, style) where

import CSS as CSS
import CSS.Overflow as CSS
import CSS.TextAlign as CSS
import CSS.Stylesheet (CSS, Rule(Property), runS)
import CSS.Render (collect)
import Data.Either (either)
import Data.Foldable (foldl)
import Data.Monoid (mempty)
import Data.String (drop, joinWith, split, take, toUpper, toLower)
import Data.Tuple (Tuple(Tuple))
import Prelude (($), (++), map)
import Pux.Html (Attribute)

style :: forall a. CSS -> Attribute a
style rules = Pux.Html.Attributes.style $ css rules

css :: CSS -> Array (Tuple String String)
css rules =
  map tuple $ foldl tuples [] $ runS rules
  where
  tuple p = either (\_ -> mempty) (\(Tuple k v) -> Tuple (camelCase k) v) p
  tuples array (Property key val) = collect (Tuple key val) ++ array
  tuples array _ = array

camelCase :: String -> String
camelCase str = toLower (take 1 pascalCase) ++ (drop 1 pascalCase)
  where
  pascalCase = joinWith "" $ map capitalize (split "-" str)
  capitalize word = toUpper (take 1 word) ++ (drop 1 word)
