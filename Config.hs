{-# language DeriveGeneric #-}

module Config where

import System.FilePath
import Dhall
import GHC.Generics (Generic)

data Config = Config
  { repoRoot :: !Text
  , secret :: !Text
  , oauth :: !Text
  } deriving (Generic)

instance Interpret Config
