# 🚲 Bike Store Analysis
 Project of an analysis of a Bike Store to practice SQL, Excel and Tableau.

For this project we are going to use SQL Server for the database. Then we are going to connect our dataset to Excel and we are going to create an interactive Dashboard. And finally we are going to connect our Excel dataset to Tableau and also we are going to create a Dashboard.

# 📚 Data

In our data we have the following tables: 

## Production

* brands
  * brand_id
  * brand_name

* categories
  * category_id
  * category_name

* products
  * product_id
  * product_name
  * brand_id
  * category_id
  * model_year
  * list_price

* stocks
  * store_id
  * product_id
  * quantity

## Sales

* customers
  * customer_id
  * first_name
  * last_name
  * phone
  * email
  * street
  * city
  * state
  * zip_code

* order_items
  * order_id
  * item_id
  * product_id
  * quantity
  * list_price
  * discount

* orders
  * order_id
  * customer_id
  * order_status
  * order_date
  * required_date
  * shipped_date
  * store_id
  * staff_id

* staffs
  * staff_id
  * first_name
  * last_name
  * email
  * phone
  * active
  * store_id
  * manager_id

* stores
  * store_id
  * store_name
  * phone
  * email
  * street
  * city
  * state
  * zip_code

![Data Base Scheme](./data/database_scheme.png)