--Retrieve the emp_no, first_name, last_name from Employees table.
--Retrieve the title, from_date,to_date from Titles table.
--Create a new table "retirement_titles" using the INTO clause.
-- retrieve the employees who were born between 1952 and 1955. 
--Then, order by the employee number.

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM public."Employees" e
	INNER JOIN public."Titles" t
			  ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no
--select * from public.retirement_titles


--Use DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--number of employees by most recent title about to retire.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC; 


--Create a mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) 
    e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibility
FROM public."Employees" e
	INNER JOIN public.dep_emp d
		ON e.emp_no = d.emp_no
	INNER JOIN public."Titles" t
		ON e.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;
--select * from mentorship_eligibility