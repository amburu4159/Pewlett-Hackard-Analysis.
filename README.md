# Pewlett-Hackard-Analysis

## Overview of the analysis
The purpose of this analysis is to help Pewlett-Hackard analyze and plan for the "silver tsunami" as many current employees reach retirement age.

# Results: 
 •	The results of the analysis are counted below per title. These are employees who were born between 1952 and 1955
count	title
29414	Senior Engineer
28254	Senior Staff
14222	Engineer
12243	Staff
4502	Technique Leader
1761	Assistant Engineer
2	Manager
90398	Total Ret Soon
300324	Total Employees
30.10%	% retiring soon

•	There are 90,398 employees who will be retiring soon. this means that about 30% of the workforce will be retiring soon (based on (300,324 total employees)

•	Senior Engineers (29,414) and Senior Staff (28,254) are the titles with the most employees retiring soon

•	The good news is that only 2 managers will be retiring soon. It would be a good idea to start mentoring capable employees to build the pipeline for managers, so when managers do retire, there won’t be any gaps

## Summary:
In summary, 90,398 employees (SELECT * FROM public.retiring_titles ) will be retiring soon, and of these employees, 71,980 or abour 80% of them are in senior positions or engineering. With that in mind, it is extremely critical that Pewlett-Hackard has a plan in place to fill these positions. I put together a mentorship table that would be a good place to start looking for qualified and willing employees to start grooming them to fill in the roles as they become open (SELECT * FROM public.mentorship_eligibility)


