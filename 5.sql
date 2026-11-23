SELECT FirstName || ' ' || LastName || ' is ' || 
       (strftime('%Y', 'now') - strftime('%Y', BirthDate) - 
        (strftime('%m-%d', 'now') < strftime('%m-%d', BirthDate))) || 
       ' years old' AS EmployeeAge
FROM Employee
WHERE reportsto IS NULL;