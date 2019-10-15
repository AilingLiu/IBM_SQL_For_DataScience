-- retrieve the list of employees who earn more than the average salary

SELECT EMP_ID, SALARY, F_NAME, L_NAME
FROM EMPLOYEES
WHERE SALARY > (
	SELECT AVG(SALARY) FROM EMPLOYEES
);

-- retrieve only employees correspond to departments in department table
SELECT EMP_ID, DEP_ID
FROM EMPLOYEES
WHERE DEP_ID IN (
	SELECT DEPT_ID_DEP FROM DEPARTMENTS
);

-- retrieve only the list of employees from a specific locations
SELECT * 
FROM EMPLOYEES
WHERE DEP_ID IN (
	SELECT DEPT_ID_DEP FROM DEPARTMENT
	WHERE LOC_ID = 'L0002'
);

-- to retrieve the department id and name for employees earn moe than 70k
SELECT DEP_NAME, DEPT_ID_DEP
FROM DEPARTMENTS
WHERE DEPT_ID_DEP IN (
	SELECT DEP_ID FROM EMPLOYEES
	WHERE SALARY > 70000
	);

SELECT F_NAME, DEPT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEP_ID = D.DEPT_ID_DEP;