# HTML
+ Honestly, very easy to pick. Just visit w3schools.com

## Dropdown Lists
```html
  <select class="cars" name="cars" id="cars">
    <option value="volvo">Volvo</option>
    <option value="polo">Polo</option>
  </select>
```

## Forms
```html
  <form class="form" action="index.html" method="post">
    <label for="cars">Choose a car</label>
    <select class="cars" name="cars" id="cars">
      <option value="volvo">Volvo</option>
      <option value="polo">Polo</option>
    </select>
    <br><br>
    <input type="submit" name="submit" value="Submit">
  </form>
```

## Moving to a different section in the same web page
+ Using `id` selectors
+ Have a tag make us of an `id`
+ Create a `a` tag reference to that `id`
```HTML
  <p id="link_1">Hello</p>
  <a href="#link_1">Go to hello on the same page</a>
```

## Opening Links in a new tab
```html
  <a href='#' target="_blank">
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
​```HTML
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

## Banner Headers
```CSS
  * {
    margin: 0;
  }

  .header {
    width: 100%;
  }
```
+ `margin: 0;` will allow no spaces around block elements
+ Add `margin:0` to the `*` selector in the `grid.css` stylesheet

## Smart Coloring
+ Create a `CSS` stylesheet that will hold all the classes that will represent the color scheme
  of your website
+ Create classes for `background-color` and `color` for text

## Animation/Transitions
+ The tag you want a transition to occur to must have the `transition` property
  and the time over which the transition will take place as well as the property that will change
```css
  .div {
    transition: width 2s, height 2s;
  }
```
+ Then something that will trigger the transition
```css
  .div:hover {
    widht: 110%;
  }
```

+ With the grid view layout, transition over `padding` for the desired hover effect

## DIV heights
+ Percentage height of a child div is relative to its containing div
+ Therefore, height must be explicity defined all the way up to the `<html>` containing element
```CSS
  <html style="height: 100%;">
    <body style="height: 100%;">
      <div class="header" style="height:30%;"
```

# JS
+ The main purpose of javascript is to change the DOM (Document object model)
+ DOM -> elements of a webpage such as any `div` tags etc
+ Somewhat event based, you want certain actions to trigger based on an event that has occurred such as clicking a button

## Internal JS

+ JS resides inside the html

+  Use the `<script>` tags inside the `<head>` tags or `body` tags

  ```html
  <head>
  	<script>
  		/* Your JS Code Here */
  	</script>
  </head>
  ```

## Alerts

```javascript
alert("Hello, World!");
```

## External JS

+ Similar to linking external css

+ Have all js code in a separate file

  ```html
  <head>
  	<script src="js/myJS.js"></script>
  <head>
  ```


## Onclick Events

```html
<a href="#" onClick="alert('You clicked a link!')">A Link</a>
```

## OnMouseOver Events

```html
<a href="#" onMouseOver="alert('You moused over a link')">A link</a>
```

## Syntax

### Variables and Constants


# Flask Applications (Python)

## Basic Flask Folder structure
```
  - /
  - app.py
  - static/
  -- *.css
  - templates//
  -- *.html
```

## Basic Flask App
```python
  from flask import Flask

  app = Flask(__name__)

  @app.route('/')
  def index():
    return 'Hello, World!'
```

+ Flask uses routes -> `@app.route('/')` to act as urls
+ If that url is entered the function directly under the route will run
+ Can be used to redirect or serve up static web pages

## Rendering HTML
+ `from flask import render_template`
```python
  render_template("pat_to_html", name_1=arg_1, name_2=arg_2)
```

+ The args are what are sent to the template to be used similarly to variables
+ If the correct folder structure is followed above, then one only needs to specify  
  the name of the template to be rendered and not the path

## Templating with Jinja2
+ Args passed to a template can be accessed by using `{{name_1}}`
+ Using `for` loops to iterate through a List
```python
  <ul>
    {% for i in name_of_list %}
      <li> {{ name_of_list[i] }} </li>
    {% endfor %}
  </ul>
```

## Flask Forms
+ Need to specify a route to handle `get` and `post` request
```python
  from flask import request

  app.route('/', methods=['POST','GET'])
  def index():
    if request.method == 'POST':
      request.form['value_1']
    elif request.method == 'GET':
      # Load some page data
```
+ The form's `action` attribute must have the link to the   route that will handle the form
+ `<form action='/'>`

+ The above example using the `if/elif` clause to handle different HTTP methods
  can be used to have a form and information on the same page based on the input
  of the form

## Serving images using Flask
+ All images must be locate in the `static` folder as shown in teh above folder
  structure
+ `<img src="/static/img.png">`

## Running the Flask development server
+ Assuming all information above has been correctly followed:
```
  $ flask run
```
+ Must be run inside the same directory where `app.py` is located

# Working with API keys
## Python
+ Create `config.py` -> store API keys
```
  api_key = "YOUR KEY HERE"
```
+ `config.py` should be included in the `.gitignore`
+ Then just `import` config into your main project and reference the variables therein

# API Requests python
+ `import urllib.request.urlopen`

# Processing JSON using Python and Requests
+ `pip install requests`
+ `import requests`

## GET Requests
```
  resp = requests.get('URL')
```
+ Get JSON from response: `resp.json()`
+ With query params: `requests.get('URL', params=params)`


# Using Python Virtual Env
+ `pip install virtual env`
+ `virtualenv [DIRECTORY HERE]`
+ Once inside the given directory, `Scripts\activate`


# Working with large datasets using Pandas


# SQL Databases
+ DB -> organized collection of information
  + Example: index of a book
+ DB allow us to access and interact with the data in the DB
+ SQL -> Structured Query Language
  + Used to communicate with DBs
  + SQL is used to perform tasks on a DB

## What is MySQL
+ Relational DB Management System (RDBMS)
+ Provides a UI to access and interact with the DB

## RDBMSs
+ A relational DB is a collection of data organized into tables
+ Tables contain columns of data categories and rows with particular instances
  of that data category
+ Tables in a RDBMS can share a relation with each other
  + The `id` in one table can be shared with another table to reference a different category

## Creating a DB with MySQL Workbench

## Giving users root privilege
+ `root user` -> Left Hand Pane -> `users and privileges` -> Select user
  -> `admin roles` -> Tick `DBA` -> apply

### Show all existing Databases
```mysql

SHOW DATABASES;

```

### Create a DB
```mysql

create database <NAME>;

```

### Enter a DB
```mysql

use <DB_NAME>;

```

### Show the tables in a DB
```mysql

show tables;

```

### Deleting DBs
```mysql

 drop database <DB_NAME>;

```

### Deleting Tables inside DBs
```mysql

  drop table <TABLE_NAME>;

```

## MySQL Data Types
+ Have to define the data type of the data a column within a table can hold
+ `INT`: whole numbers
+ `FLOAT(M,D)`: decimal numbers (approx)
  + M = Number of digits in the number including decimals
  + D = How many decimals
  + Eg. for 1.78, M = 3, D = 2
  + Allows for rounding
+ `DECIMAL(M,D)`: decimal numbers(precise)
  + No rounding
+ `CHAR(N)`: Fixed length character
  + `CHAR(5)` defines 5 letter strings and so on
  + `CHAR(3)` -> USD, ZAR
+ `VARCHAR(N)`: Varying length character
  + Hold any string up to the length N
  + Used for names of people, places etc.
+ `ENUM('M','F')`: Hold values from a defined list
  + Example M, F -> Male, Female
+ `BOOLEAN`: True or False
+ `DATE`: Date (YYYY-MM-DD)
  + DOB columns
+ `DATETIME`: Date and Time (YYY-MM-DD HH-MM-SS)
  + Order Placement table
+ `TIME`: Time only (HHH-MM-SS)
  + Can be used for the time between 2 events
+ `YEAR`: year only (YYYY)
  + Release Dates

## Keys
### Primary Keys
+ A `pk` is a column or set of columns which uniquely IDs a record within a table
  + Each new entry within a table will require a unique identifier for that row (record)
+ `pk` must be unique
+ `pk` cannot be `NULL`
+ A table can only have one `pk`

### Foreign Keys
+ A `fk` is used to link two tables together
+ A `fk` is a column whose values match the values of another table's `pk`     column
+ The table with the `pk` is called the `reference` or `parent` and the table with the `fk` is called the `child` table
+ A table can have multiple `fk`


## Creating tables in a DB
+ Access DB: `use <DB_NAME>;`
+ Define column name and datatypes accordingly
+ Set the `id` column as the `pk`
+ Use `auto_increment` to auto increment the `id` column for each new entry
+ `[COL_NAME] [COL_DATA_TYPE]`
+ `decimal(3,2)` will take values like 9.99 but not 10.01
```mysql

create table <TABLE_NAME>(
    id int auto_increment primary key,
    name varchar(48),
    price decimal(3,2)
  );

```

+ **NOTE** Every table must have a `pk`

### Setting Foreign Keys
+ In the same table creation
```mysql

  create table orders (
    id int auto_increment primary key,
    product_id int,
    customer_id int,
    order_time datetime,
    foreign key (product_id) references products (id),
    foreign key (customer_id) references customers (id),
  );

```
+ `product_id` is referencing the `id` column in the `products` table
+ `customer_id` is referencing the `id` column in the `customers` table

## Modifying Tables
+ Retrieve all the data from a table:
```mysql

  select * from <TABLE_NAME>;

```
+ Adding a column to an existing table:
```mysql

  alter table <TABLE_NAME>
  add column <COL_NAME> <COL_DATA_TYPE>;

```
+ Removing a column from a table
```mysql

  alter table <TABLE_NAME>
  drop column <COL_NAME>;

```

## Truncating tables
+ Deleting all data (rows) from a table
```mysql

truncate table <TABLE_NAME>;

```

## Altering a table
### Adding/Removing Primary Keys from a table
+ Add a primary key
```mysql

  alter table <TABLE_NAME>
  add primary key (<COL_NAME>);

````
+ Remove a primary key
```mysql

  alter table <TABLE_NAME>
  drop primary key;
```

### Display table layout
```mysql

  describe <TABLE_NAME>;

```

### Adding/Removing foreign keys from a table
+ add a foreign key
+ `constraint_name` can be whatever value you choose, similar to an identifier
```mysql

  alter table <TABLE_NAME>
  add constraint <CONSTR_NAME>
  foreign key (<COL_NAME>) references <TABLE_NAME> (<COL_NAME>);

```
+ remove a foreign key
```mysql

 alter table <TABLE_NAME>
 drop foreign key <CONSTR_NAME>;

```
+ `NOTE`: `fk` must reference a `pk` or `unique` column in another table
# MySQL Workbench Shortcuts
## Running Queries
+ All: `CTRL + SHIFT + ENTER`
+ Current Line: `CTRL + ENTER`

### Unique constraints
+ add a unique constraint
+ `constraint_name` can be whatever value you choose, similar to an identifier
```mysql

  alter table <TABLE_NAME>
  add constraint <CONSTR_NAME> unique (<COL_NAME>)

```
+ remove a unique constraint from a column
```mysql

 alter table <TABLE_NAME>
 drop index <CONSTR_NAME>;

```
+ A column with a unique constraint applied to it will not accept any duplicate values of data within that column


### Changing a column name
```mysql

  alter table <TABLE_NAME> change `<OLD_COL_NAME>` `<NEW_COL_NAME>` <DATA_TYPE>;

```

### Changing column data type
```mysql

  alter table <TABLE_NAME> modify <COL_NAME> <DATA_TYPE>;

```

## Inserting data into a table
```mysql

  insert into <TABLE_NAME> (<COL_1>,<COL_2>,...)
  values ('value1','value2',...),(value1,value2,...);

```
+ `values` are inputted except for the `id` field of a table
+ Comma separated value fields

## Updating data in tables
```mysql

  update <TABLE_NAME>
  set <COL_NAME> = 'value',<COL_NAME_2> = 'value', . . .
  where <COL_NAME> = 'value';

```
+ `set` the new value
+ `where` the value to be updated is (column name)
+ Only allowed to use the `pk` column in the `where` statement when you are updating data, since `safe updates` are enabled
+ To change this
```mysql

  set SQL_SAFE_UPDATES=0;

```
+ Multiple rows can be updated if the `where` clauses matches columns that have the same value

## Deleting data in a table
```mysql

  delete from <TABLE_NAME>
  where <COL_NAME> = 'value';

```
+ Can delete multiple rows depending on the `<COL_NAME>` selected
