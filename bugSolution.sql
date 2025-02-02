To correctly handle NULL values, use the `IS NULL` or `IS NOT NULL` operators instead of `=` or `!=`.  For instance, to include employees with a `NULL` department ID, modify the query as follows:

```sql
SELECT * FROM employees WHERE department_id = 10 OR department_id IS NULL;
```

This revised query uses the `OR` operator to include rows where `department_id` is either 10 or `NULL`.  For aggregate functions, consider using functions that handle NULL values differently (e.g., using `COALESCE` to replace `NULL` with a default value before aggregating) to ensure accurate results. 

For joins, left or right joins could be used depending on whether all the rows of the left or the right table should be included, including the rows that lack matches in the other table. 

For the `LIKE` operator, you can use `IS NOT NULL` to handle NULL values differently to ensure all rows are considered in your comparison: 

```sql
SELECT * FROM employees WHERE department_id IS NOT NULL AND department_id LIKE '10%';
```