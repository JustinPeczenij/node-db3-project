-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT P.productName, C.categoryName FROM Product P
JOIN Category C ON P.CategoryId = C.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT O.id, S.Companyname FROM "order" O
JOIN Shipper S ON S.Id = O.ShipVia
where O.orderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, OD.quantity FROM OrderDetail OD
JOIN Product P ON OD.productId = P.id 
where OD.orderId = '10251';
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT O.id as order_id, C.companyname as client_company_name, E.lastname as employee_last_name FROM "order" O
JOIN Employee E ON O.EmployeeId = E.Id
JOIN Customer C ON O.CustomerId = C.Id;