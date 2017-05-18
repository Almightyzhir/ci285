{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Home"
    [whamlet|
<h1>Zhir's Calculator</h1>
<h3>Adding Operation:</h3>
        <p>To add two numbers, type both numbers in the address as http://localhost:3000/add/'firstnumber'/'secondnumber' ...
            <a href=@{AddR 53 6}> Example: 53 + 6 
<h3>Subtracting Operation:</h3>
<p>To subtract two numbers, type both numbers in the address as http://localhost:3000/sub/'firstnumber'/'secondnumber' ...
            <a href=@{SubR 18 11}> Example: 18 - 11
<h3>Multiplying Operation:</h3>
<p>To multiply two numbers, type both numbers in the address as http://localhost:3000/mult/'firstnumber'/'secondnumber' ...
            <a href=@{MultR 40 25}> Example: 40 * 25
<h3>Dividing Operation:</h3>
<p>To divide a number, type both numbers in the address as http://localhost:3000/div/'firstnumber'/'secondnumber' ...
            <a href=@{DivR 2 10}> Example: 2 / 10
<h3>Squaring Operation:</h3>
<p>To Square a number, type the number in the address as http://localhost:3000/Sqo/'number' ...
            <a href=@{SqoR 12}> Example: Square 12
<h3>Cubing Operation:</h3>
<p>To Cube a number, type the number in the address as http://localhost:3000/Cub/'number' ...
            <a href=@{CubR 4}> Example: Cube 4
|]