{-# LANGUAGE TemplateHaskell #-}

import Language.Haskell.TH.Syntax (ForeignSrcLang (LangCxx), addForeignSource)

$( do
    addForeignSource LangCxx "int test_one() { return ONE; }"
    pure []
 )

main :: IO ()
main = pure ()
