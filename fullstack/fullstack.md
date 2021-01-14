# HTML
+ Honestly, very easy to pick. Just visit w3schools.com

## Moving to a different section in the same web page
+ Using `id` selectors
+ Have a tag make us of an `id`
+ Create a `a` tag reference to that `id`
```HTML
  <p id="link_1">Hello</p>
  <a href="#link_1">Go to hello on the same page</a>
```

# CSS
+ Cascading style sheets
+ If HTML defines the structure of a web page, then CSS defines the style and
  design
+ Written in a file with a `.css` extension and linked into the HTML file
+ `<selector>{<decl1; decl2; decl3; . . .;>}`
+ Where a `<decl> => propery: value;`
+ The `selector` tells us where a css rule has to be applied
+ Example
```CSS
  h1{color:red;}
```
+ Tells us that we select the `h1` tag and change its color to red

## Inline CSS
+ Every html tag has access to the `style` attribute
+ We define our inline css via the `style` attribute to apply styling to a certain tag
+ Example `<h1 style='color:red;'>Hello</h1>`

## Internal CSS
+ Still within the same html file
+ Now defined within `<style></style>` tags
```CSS
  <style>
    h1 {
      color: red;
    }
  </style>
```
+ Style tags are nested within `head`

## External CSS
+ CSS contained in `.css` file
+ Link the style sheet in the HTML file, embedded in `<head>`
+ `<link rel="stylesheet" type="text/css" href="./style.css">`
+ Relative to the current folder

## CSS Linking
+ Have one css file import others so that you can only link one css file in html
+ `@import "stylesheet1.css";`
+ Can have multiple import statemetns in one css file

## Universal Selector
+ Denoted by `*`
+ Rule applies to all HTML tags
```CSS
  * {
    color: red;
  }
```
+ Will apply the color red to all applicable tags

## Type Selectors
+ Normal selectors
+ Apply one rule to multiple tags
```CSS
  h1, h2, p {
    color: red;
  }
```
+ Will apply the color red to the `h1`, `h2` and `p` tags

## Class Selectors
+ Selector prefixed with `.` -> `.myClass {}`
+ HTML tags must make use of the class definition to have a class have its CSS applied to it
```HTML
  <h1 class="red-border">Hello</h1>
```
```CSS
  .red-border {
    border-style: solid;
    border-color: red;
  }
```
+ HTML tags can make use of multiple classes `<tag class="class1 class2 ...">`
+ Force class selectors to target only a specific tag, even when applied to other tags it will not work `h1.myClass`
+ Here the `myClass` styling will only apply to `h1` tags

## Attribute Selectors
+ A CSS rule applied to tags that only possess the attribute of a specific class

```CSS
  p[class="myClass"] {
    color: red;
  }
```

+ This rule will apply only to tags that have declared there class to be of `myClass`
```HTML
  <p class="myClass">hello</p>
```

## Child Selectors
+ `parent_tag > child_tag {css rules}`
+ Will apply the css rules to every child tag present in the parent tag
+ Useful for `<div>` tags
+ Only applicable to children of their immediate parents

## Psuedo Classes
+ Add event driven styling
```CSS
  .myClass:event {}
  h2.thisClass:event{}
```
+ `tag.class {}` is a style that only applies to a tag that uses a specific class

## CSS Box - Content Layout
+ Height and Width CSS properties define a box

```CSS
  .box {
    background-color: red;
    height: 100px;
    width: 100px;
  }

  .border-box {
    border-style: solid;
    border-color: red;
    border-width: 4px;
    border-top-style: dashed;
  }
```
+ Margins are the spaces around boxes used to move boxes around
+ `margin-top/right/bottom/left`
+ Shortcut
```CSS
  tag {margin: px px px px;}
```
+ Padding is the space inside a box
+ Similar to margin formatting
+ Boxes have `min-width/height` and `max-width/height` properties

## Floating Columns
+ Moving boxes around in the webpage
+ `div` boxes are by default always started on a new line
+ Sometimes you want a box to be floated inline
+ `float: left` can be used to float boxes on the left side of the screen
+ `float: right` works similarly
+ Clear-fix css ruling to break floating and return to normal newline elements
+ Breaks the sequence of the floating
```CSS
  .clearfix::after {
    content: ".";
    display: block;
    clear: both;
    height: 0;
    visibility: hidden;
  }
```
+ Keep all your floating elements inside a master `div`
+ This master `div` will use the clearfix class to clear the floating properties after it to return to normal block mode

#  Creating a menu
```HTML
    <ul>
      <li><a href="#">Home</li>
      <li><a href="#">Away</li>
      <li><a href="#">Wembley</li>
    </ul>
```

```CSS
   ul {
     list-style-type: none;
     background-color: black;
   }

   li {
     float: left;
     overflow: hidden;
   }

   li a {
     color: white;
     text-decoration: none;
   }
```
+ Content too large for the screen mught not display, then you use the `overflow: hidden` property to circumvent it
+ the `display` attribute of a tag controls the behaviour of displaying the elements on the page

## Positioning Boxes
+ using `position: fixed` then the corresponding `left/right/bottom/top` properties on can fix the position of an element so that it stays in that position regardless of the scrolling of the webpage
+ `position: absolute` removes the parent child relationship between immediate parents and children
+ Thus positioning the element that makes use of the absolute positioning according to the HTML page
+ Using `position: relative` positions a an element relative to its normal position using `left/right/bottom/top`

##  Inline or Block
+ Inline is positioning next to each other
+ Block positioning goes on new line
+ Accessed via the `display: prop` property
+ Width/Height properties will only apply to the `inline-block` `display` property

## Cards
+ Boxes can have background images
```CSS
  .bg {
    background-image: url("path_to_image");
  }
```

+ Transparency
+ Opacity ranges from 0.0 to 1.0
```CSS
  .bg {
    opacity: 0.3;
  }
```
+ Containing a BG image, image must be larger than the containing `div`
```CSS
  .bg {
    background-size: contain;
  }
```

## Smooth transitions
+ Selector you want to use a transition on
+ Property you want to transition between
+ A change in a property will trigger the transition
```CSS
  .card {
        transition: width 2s;
  }

  .card:hover {
    width: 200px;
  }
```
+ Then when a user hovers over a card, it will transition the resize over 2s
+ Transitioning several properties: `transition: prop1 xs, prop2 ys, ...;`

## Navigation bars
+ Essentially a list of links
```HTML
  <ul class="nav">
    <li><a href="#">Home</a></li>
    <li><a href="#">Away</a></li>
    <li><a href="#">Wembley</a></li>
  </ul>
```
+ Remove bullets, margins and paddings to `ul`
```CSS
  ul.nav {
    list-style: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
  }
```
+ Change block `li` elements to `inline elements`
```CSS
  li.nav {
    display: inline;
  }
```
+ Display links as blocks, allows for padding and margining
```CSS
  li.nav a {
    display: block;
    color: white;
    text-align: center;
    padding: 10px 5px;
    text-decoration: none;
  }

  li.nav a:hover {
    background-color: red;
  }

## Responsive Web Design - Grid View
+ Web page divided into Columns
+ Often use 12 columns using 100% of the viewport width

+ Viewport `meta` for Responsive web design
```HTML
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
```
+ All html elements must have the `box-sizing` property set to `border-box`
+ This ensures that border and padding is included in the width of an element
+ This is very important to obtain the perfect layout in terms of `div` elements
  not overflowing to the next line
```CSS
  * {
    box-sizing: border-box;
    margin: 0;
  }
```
+ Use `margin: 0;` for banner headings
+ Margin properties for other elements can be overridden later on

### Placement in the Grid
+ Calculate the percentage of 1 column based on the total number of columns you
  choose in this grid view
+ Example: 100%/12 = 8.33%
+ Then design CSS classes for each of those percentages
```CSS
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}
```
+ Then allow all these columns to be left floating
```CSS
  [class*="col-"] {
    float: left;
    padding: 15px;
    border: 1px solid red;
  }
```
+ Each element should be placed inside a `div`
+ The div takes a `col-` class which indicates how many columns it will take up
+ The column numbers must add up to the total, in this case 12, for each row
+ The clearfix must be added to a new `div` which is intended to go on a new line
  + Another div can be embedded in that using a `col-` class to specifiy its width
```CSS
  .row::after {
    content: "";
    clear: both;
    display: table;
  }
```

+ To make a new line:
```HTML
  <div class="row"></div>
```
+ `::` indicates psuedo-elements
+ Within the grid layout css, add margin properties to give spacing between `div` tags in a row
+ To allow elements to flow on the same line, place them within a `div` tag that uses the `col-`
  classes
```CSS
  <div class="col-3">content on the left</div>
  <div class="col-3">content on the right</div>
```

+ You can embed column placements like this:
```HTML
<div class="col-20">
    <div class="col-17">LOGO</div>
    <div class="col-1"><a href="#"><img src="res/facebook.png" class="icon"></a></div>
    <div class="col-1"><a href="#"><img src="res/instagram.png" class="icon"></a></div>
    <div class="col-1"><a href="#"><img src="res/twitter.png" class="icon"></a></div>
</div>
```

## Mobile First Design with Media Queries
+ Add breakpoints in CSS using media queries to allow different stylings to occur
  for different screen sizes
+ Example: For mobile you would want the columns `col-` to stack rather than mimic
  the desktop layout
```CSS
  @media only screen and (max-width: 768px)
  /* For mobile phones: */
  [class*="col-"] {
    width: 100%;
  }
```
+ Meaning that for mobile devices with a screen width of less than 768px,
  The rows of content `div` tags will stack as they will each use 100% of the
  body width of the web page regardless of how it was designed for desktop
+ Always design for mobile first, then add breakpoints for other devices

## Fine Tuned Responsive development
+ Name your grid columns `col-` different names according to a certain device
  breakpoint
+ Now when structuring your HTML, you can allow divs to make use of multiple classes
  to style it according to the device it is being portrayed on
+ `col-s-` for tablets, `col-` for desktop
```CSS
@media only screen and (min-width: 600px) {
/* For tablets: */
.col-s-1 {width: 8.33%;}
.col-s-2 {width: 16.66%;}
.col-s-3 {width: 25%;}
.col-s-4 {width: 33.33%;}
.col-s-5 {width: 41.66%;}
.col-s-6 {width: 50%;}
.col-s-7 {width: 58.33%;}
.col-s-8 {width: 66.66%;}
.col-s-9 {width: 75%;}
.col-s-10 {width: 83.33%;}
.col-s-11 {width: 91.66%;}
.col-s-12 {width: 100%;}
}

@media only screen and (min-width: 768px) {
/* For desktop: */
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}
}
```

```HTML
<div class="row">
  <div class="col-3 col-s-3"></div>
  <div class="col-6 col-s-9"></div>
  <div class="col-3 col-s-12"></div>
</div>
```
+ Where the second `div` will take up 6 column spaces on desktop, but 9 column spaces on a tablet
+ Similarly for the third `div`, which will take up 3 column spaces on desktop, but 12 column spaces
  on tablet

# Hiding using Media Queries
+ Use media queries to hide certain elements or display certain elements on specific devices only
```CSS
  @media only screen and (max-width: 600px) {
    .hide-m {
      display: none;
    }
  }

  @media only screen and (min-width: 600px) {
    .hide-t {
      display: none;
    }
  }

  @media only screen and (min-width: 768px) {
    .hide-d {
      display: none;
    }
  }
```
+ Developed to use the grid view for centering elements where hiding the `fill`
  grids on specific devices were needed

## Centering Grid Elements
+ Use grid `col-` as spaces to center `div` tags that make use of those classes

## Responsive images
+ Height -> auto
+ Width -> %
+ Yield autoscaling images

## Vertical Text Alignment
+ Simply use `padding-top` based on the height of the containing tag

## Making a DIV clickable as a link
+ Surround `div` by anchor tag, and apply `text-decoration: none;`

## Using Google Fonts
```HTML
  <link href='https://fonts.googleapis.com/css?family=Asset' rel='stylesheet'>
```

```CSS
  font-family: 'NAME_OF_FONT';
```

## Aligning a DIV
+ `margin: auto;`

## Better looking text
+ Use `text-shadow: Apx Bpx color` to make text pop

## Making a banner
+ Create a wider screen width `width: 200%`
+ The key is `position: relative`
+ Adjust `left` and `top` using negative `px` to get the desired position

## Banner Headers
```CSS
  * {
    margin: 0;
  }

  .header {
    width: 100%;
  }
```
+ `margin: 0;` will allow now spaces around block elements
+ Add `margin:0` to the `*` selector in the `grid.css` stylesheet

## Smart Coloring
+ Create a `CSS` stylesheet that will hold all the classes that will represent the color scheme
  of your website
+ Create classes for `background-color` and `color` for text

# JS
