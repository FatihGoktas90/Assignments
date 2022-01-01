<<<<<<< HEAD
 /* ===================
 1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, 
 sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).
 
 ==================*/
SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY CustomerId DESC;

SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY total ASC;

 /* ===================
2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, 
but this time sorted first by total dollar amount (in descending order),
 and then by CustomerId (in ascending order).
 
 ==================*/
 
SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY CustomerId ASC;

SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY total DESC;

 /* ===================
3. Compare the results of these two queries above. How are the results different
 when you switch the column you sort on first?
 (Explain it in your own words.)
 
 -- Two queries different because  we are using ORDER BY  ASC and DESC different place of code . 
 
 ==================*/
 
  /* ===================
4. Write a query to pull the first 10 rows and all columns from the invoices table 
that have a dollar amount of total greater than or equal to 10.
 
 ==================*/
 
 SELECT *
 FROM invoices
 WHERE total >= 10
 LIMIT 10;
 
   /* ===================
5. Write a query to pull the first 5 rows and all columns from the
 invoices table that have a dollar amount of total less than 10.
 
 ==================*/
 
 SELECT *
 FROM invoices
 WHERE total < 10
 LIMIT 5;
 
  
   /* ===================
6. Find all track names that start with 'B' and end with 's'
 
 ==================*/
 
 SELECT *
 FROM tracks
 WHERE name LIKE 'B%' OR name LIKE '%s';
 
    /* ===================
7. Use the invoices table to find all information regarding invoices
 whose billing address is USA or Germany or Norway or Canada and invoice date is at
 any point in 2010, sorted from newest to oldest.
 
 ==================*/
 SELECT*
 FROM invoices
 WHERE BillingCountry IN ('USA','Germany','Norway','Canada') AND InvoiceDate > "2010-01-01"
 ORDER BY InvoiceId  DESC;
  
 
 
 
=======
 /* ===================
 1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, 
 sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).
 
 ==================*/
SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY CustomerId DESC;

SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY total ASC;

 /* ===================
2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, 
but this time sorted first by total dollar amount (in descending order),
 and then by CustomerId (in ascending order).
 
 ==================*/
 
SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY CustomerId ASC;

SELECT InvoiceId,CustomerId,total
FROM invoices 
ORDER BY total DESC;

 /* ===================
3. Compare the results of these two queries above. How are the results different
 when you switch the column you sort on first?
 (Explain it in your own words.)
 
 -- Two queries different because  we are using ORDER BY  ASC and DESC different place of code . 
 
 ==================*/
 
  /* ===================
4. Write a query to pull the first 10 rows and all columns from the invoices table 
that have a dollar amount of total greater than or equal to 10.
 
 ==================*/
 
 SELECT *
 FROM invoices
 WHERE total >= 10
 LIMIT 10;
 
   /* ===================
5. Write a query to pull the first 5 rows and all columns from the
 invoices table that have a dollar amount of total less than 10.
 
 ==================*/
 
 SELECT *
 FROM invoices
 WHERE total < 10
 LIMIT 5;
 
  
   /* ===================
6. Find all track names that start with 'B' and end with 's'
 
 ==================*/
 
 SELECT *
 FROM tracks
 WHERE name LIKE 'B%' OR name LIKE '%s';
 
    /* ===================
7. Use the invoices table to find all information regarding invoices
 whose billing address is USA or Germany or Norway or Canada and invoice date is at
 any point in 2010, sorted from newest to oldest.
 
 ==================*/
 SELECT*
 FROM invoices
 WHERE BillingCountry IN ('USA','Germany','Norway','Canada') AND InvoiceDate > "2010-01-01"
 ORDER BY InvoiceId  DESC;
  
 
 
 
>>>>>>> 8c9181ba8a791c5ab7bee1881c4cc6cae688abca
 