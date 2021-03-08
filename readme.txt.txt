*******************************************        Gadgets.pk        **********************************************
GROUP MEMBERS:

M. QAIS SULTANI   2018314
RIZWAN ALI JANDAN 2018395
SHAHZAIB HAYAT  2018425  





Our project is based on an Ecomerce store. Which aim is to store electronic products such as Mobiles, Laptop, Bands and Tablets etc. of best companies such as Apple, Samung, Huawei and Lenovo etc.
It is created on Bootstrap 3, PHP, mysql. Our project consist of two parts.
1) Administration site2) Customer site

The administration has all privileges to insert, update,view and delete any Product, Manufacturer, other admin people, and customers. 
The Customer has only privileges to see the products, add them to their cart, can register, login, proceed for payments etc.


Main Folder Name is CS232 Project.

It consist of one readme.txt file for instructions,db_gadgets.sql the sql file consist of all the queries we use in our database in this project. report of whole process and Gadgets.pk folder. 

Gadgets.pk folder consist of :

ADMIN_AREA:
	it consist of all files and folders require for administration Site. these files are
	Bootstrap: consist of bootstrap to work.
	CSS: consist of styling sheets.
	images: consist of ADMIN USER pictures.
	includes: consist of .php files which are included in some other .php files lie header, footer, database connection
	other_images: consist of logos for category and products category to show in customer site.
	slide_images: images for slide
	product_images: consist of product images.
	index.php: main file to run every other file in admin site.
	dashboard.php: main view of admin site and menu for all the functions to be done in admin site.
	there are 4 file for every function in admin site i.e. delete, update, insert and view these files are
	command_box: do the given command on box section of customer site
	command_cat: do the given command on manufacturer
	command_customer: do the given command on cuntomers
	command_order: do the given command on orders
	command_p_cat: do the given command on products category
	command_terms: do the given command on terms and condition section
	command_payment: do the given command on payment section
	command_slide: do the given command on slides section
	command_products: do the given command on products section
	command_user: do the given command on admin other people section

	login and logout: to login and logout the admin users users.



BOOTSTRAP: 
	consist of bootstrap files for the outer .php files.


CUSTOMER_AREA:
	it consist of files for Customer Site when LOGIN.
	change_pass.php: file to change the password of user.
	confirm.php: to confirm the orders.
	customer_login: login already registered customers.
	delete_accoumt: delete the customer account
	edit_account: edit the customer account
	logout: logout the customer.
	my_account: after login the customers login page
	my_orders: all time orders of customer paid and unpaid
	pay_offline: the only method to pay bills for your orders.

FUNCTIONS:
	consist of function.php file which consist of functions to be called in other .php files.

IMAGES:
	consist of shop logo images.

INCLUDES:
	consist of included .php file for main Customer site without login.

Cart.php: the shop cart part where customer can store his/her products to be bought.
Checkout.php: check if user is login or not.
contact.php: contact section of store
details.php: details section of products
index: main view of shop
load: if taking time on loading the website a loading circle pop up.
logout: to logout customer:
order: the orders section of customer
payment_option: payment options for customer but work only offline payment.
registration.php: register customer section
shop.php: main shop section
terms.php: terms and condition to be shown on store

STYLE.CSS: THE style sheet for Customer Site both login and logout.

	







*******************************************************  WORKING OF PROJECT  ***********************************************************
it will work on wampserver or any other server support php and mysql. copy the gadgets.pk folder in www folder of the server and import the db_gadgets.sql file in mysql. Now to access the Customer site type "localhost/gadgets.pk"
abd you will be in the Customer site and to access the Admin site type "localhost/gadgets.pk/admin_area/index.php"
the one admin it has is
email: shahzaib.1601186@gmail.com Password: 123

there you can add, delete, view and edit the Users , Category, product Category, Products, terms, boxes, slides. that will also be edited, deleted, inserted in database as well as Customer site.

To login to Customer site there you can register new customer or the default customer is
email: test1@gmail.com
passwod: test

here you can view products and their details, add them to your card, register new customer, login, logout, after adding products to cart proceed to payment if login or login first, you can confirm your orders through offline payment method 
and then finally pay the payment, edit account, delete account, change password.






*******************************************************THAT'S ALL. HOPE YOU LIKE IT.*************************************************************


**********************************************************HAPPY CODING.😊***********************************************
































