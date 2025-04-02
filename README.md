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

# SQL 

In this section we need to understand what are the necessities of the business.

They want to know:
* The state of the sales activities within the company and gain insight into the various trance happening in the sales volume over the period 2016 to 2018.

* The revenue per region, store, product category and brand. 

* A list of the top customers and sales representatives.

With this in mind, let's take a look at the data and create a query to get all the information that we need to solve this problem.

Let's start with the period of time, we will obtain this information in the orders table:

```sql
SELECT 
  MIN(order_date) AS "Min Date", 
  MAX(order_date) AS "Max Date" 
FROM 
  sales.orders;
```

This query give us the following result:

<style>
  .center {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 7vh;
  }
</style>
<div class=center>


|   |  Min Date  | Max Date  |
|---|------------|-----------|
| 1 | 2016-01-01 | 2018-12-28|

</div>

So information that we have correspond to the period of time of our analysis.

For the data that we need to collect is: 

* order id
* order date
* customer name
* sales representative name
* region
* store
* product 
* brand
* quantity
* price
* discount

Let's begin with the order id, customer name and order date

```sql
SELECT
  ord.order_id,
  CONCAT(cust.first_name,' ',cust.last_name),
  cust.city,
  cust.state,
  ord.order_date
FROM
  sales.orders ord
  Left JOIN sales.customers cust ON cust.customer_id= ord.customer_id;
```
<div>

</div>