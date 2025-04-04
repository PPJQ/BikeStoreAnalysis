SELECT
  ord.order_id,
  CONCAT(cust.first_name,' ',cust.last_name) AS "customer_name",
  cust.city,
  cust.state,
  ord.order_date,
  SUM(items.quantity) AS "total_units",
  SUM(items.quantity * items.list_price) AS "revenue",
  prod.product_name,
  cat.category_name,
  brand.brand_name,
  store.store_name,
  CONCAT(staff.first_name,' ',staff.last_name) AS "staff_name"
 FROM
  sales.orders ord
  LEFT JOIN sales.customers cust ON cust.customer_id= ord.customer_id
  LEFT JOIN sales.order_items items ON items.order_id = ord.order_id
  LEFT JOIN production.products prod ON prod.product_id = items.product_id
  LEFT JOIN production.categories cat ON cat.category_id = prod.category_id
  LEFT JOIN production.brands brand ON brand.brand_id = prod.brand_id
  LEFT JOIN sales.stores store ON store.store_id = ord.store_id
  LEFT JOIN sales.staffs staff ON staff.staff_id = ord.staff_id
GROUP BY
  ord.order_id,
  CONCAT(cust.first_name,' ',cust.last_name),
  cust.city,
  cust.state,
  ord.order_date,
  prod.product_name,
  cat.category_name,
  brand.brand_name,
  store.store_name,
  CONCAT(staff.first_name,' ',staff.last_name);