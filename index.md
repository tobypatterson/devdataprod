---
title       : Energy Cost Analysis
subtitle    : A simple way to estimate utility costs
author      : Toby Patterson
job         : Professional Coffee Maker
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style>

  
  .title-slide {
    background-color: #00bd1c;
    background: -webkit-radial-gradient(30% 40%, #9dfe43, #00bd1c);
  }
  body {
    background-color: black;
  }
  body slides > slide {
    background: -webkit-radial-gradient(20% 10%, #DFF3FA, #2E6CF4);
    color: #aaa;
  }
  
  img, code.php {
    border: none;
    box-shadow: 0px 0px 5px #333, inset 0px 0px 2px #333;
    margin: 0 20px
  }
  body a {
    color: #444;
  }
  #structure pre {
    width: 70%;
  }
</style>

## Why Provide a Cost Estimator

We can estimate electrical costs by examining historical usage data. Provided a month and expected utility costs,
we can provide people estimates on what they can expect for utility costs.

* Provides users an graphical understanding of the electrical usage trends.
* Assists in identifying high or unusual usage patterns where better usage or efficiency can save people money.

The current prototype provides information about Heating and Lighting usage, but can be easily expanded to include additional categories.

--- #page3

## How It Works

<div style="float:right; width:40%">

<ul>
<li>Preprocess historical data optimized for reporting</li>
<li>Create an interface using the Slidify software package (R language)</li>
<li>Deploy the Slidify application to the server</li>
<li>Users can enter their Utility rates, and select a month</li>
<li>We display a graph of their electricity usage and estimated costs</li>
</ul>

</div>

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 


--- #page4

## The Working Prototype

<iframe src="https://tobypatterson.shinyapps.io/DataProduct/ " ></iframe>

--- #page5 &radio

## What Did You Learn?

Which month has the highest Lighting Costs ?

1. January
2. April
3. _July_
4. October

*** .hint 

From the Energy Cost Analysis tool, select each month and note the estimated costs returned.

*** .explanation 

The month of July will have an estimated cost of $2061.62 . 
