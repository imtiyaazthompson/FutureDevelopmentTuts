# HTML
+ Honestly, very easy to pick. Just visit w3schools.com

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
+ Using `position: relative` positions a child element as a direct descendant of the parent element and all the positioning of the child is relative to the parent

##  Inline or Block
+ Inline is positioning next to each other
+ Block positioning goes on new line
+ Accessed via the `display: prop` property
+ Width/Height properties will only apply to the `inline-block` `display` property

# JS
