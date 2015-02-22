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
  body article p, body article li {
    font-size: 30px;
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

## The Applicataion

We can estimate electrical costs by examining historical usage data. Provided a month and expected utility costs,
we can provide people estimates on what they can expect for utility costs for the coming year.

Benefits: 

* Provides users an graphical understanding of the electrical usage trends.
* Assists in identifying high or unusual usage patterns where better usage or efficiency can save people money.

The current prototype provides information about Heating and Lighting usage, but can be easily expanded to include additional categories.

--- #page2

## How It Works

* Preprocess historical data optimized for reporting
* Create an interface using the Slidify software package (R language)
* Deploy the Slidify application to the server
* Users can enter their Utility rates, and select a month.
* Hosted application will display a graph of their electricity usage, and cost estimates based on the values they provided.

--- #page3

## Electrical Usage Over Time



<div style="float:right; width:40%">
  <p>Plot of usage shows trends over time.
  <p>A good feature to implement would be to highlight the months selected, and to expand the number of categories for which costs are estimated.</p>
</div>

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 


--- #page4

## The Application Prototype

<iframe src="https://tobypatterson.shinyapps.io/DataProduct/ " ></iframe>

--- #page5 &radio

## Testing the Application

Which month has the highest Lighting Costs ?

1. January
2. April
3. _July_
4. October

*** .hint From the Energy Cost Analysis tool, select each month and note the estimated costs returned.
