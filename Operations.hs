{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Operations where

import Foundation
import Yesod.Core

integral :: Int -> Int -> Double
integral x y = (fromIntegral x) / (fromIntegral y)

getAddR :: Int -> Int -> Handler TypedContent
getAddR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        setTitle "Operations"
        [whamlet|#{x} + #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where {
    z = x + y
	}

getSubR :: Int -> Int -> Handler TypedContent
getSubR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        [whamlet|#{x} - #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where {
    z = x - y
	}

getMultR :: Int -> Int -> Handler TypedContent
getMultR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        [whamlet|#{x} * #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where {
    z = x * y
	}
	
getDivR :: Int -> Int -> Handler TypedContent
getDivR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        [whamlet|
<p>#{x} / #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = integral x y
	

getSqoR :: Int -> Handler TypedContent
getSqoR x = selectRep $ do
    provideRep $ defaultLayout $ do
        [whamlet|#{x} * #{x} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = x * x

getCubR :: Int -> Handler TypedContent
getCubR x = selectRep $ do
    provideRep $ defaultLayout $ do
        [whamlet|#{x} * #{x} * #{x} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = x * x * x
