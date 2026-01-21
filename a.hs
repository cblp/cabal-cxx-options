{-# LANGUAGE TemplateHaskell #-}

import Language.Haskell.TH.Syntax (
    ForeignSrcLang (LangC, LangCxx),
    addForeignSource,
 )

$( do
    addForeignSource LangC   "int test_one_c()   { return ONE; }"
    addForeignSource LangCxx "int test_two_cxx() { return TWO; }"
    pure []
 )

main :: IO ()
main = pure ()
