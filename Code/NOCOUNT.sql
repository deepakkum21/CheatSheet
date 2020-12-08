----- NOCOUNT ON/OFF Example -----

/**********************
Author	: Aman Verma
Date	: 01/06/2018
***********************/

--=======	NOCOUNT ON/OFF	=======

----	The NOCOUNT ON/OFF is used to boost the performance of a stored procedure.
----	The detailed info you can get here : http://daleburnett.com/2014/01/everything-ever-wanted-know-set-nocount/

----	When it is set to ON. Then it doesn't return the number of affected rows

/* Example */

SET NOCOUNT ON
SELECT *FROM EMPLOYEE_AMAN
GO

-- @Answer: Message - Command completed successfully.

----	When it is set to OFF. Then it returns the number of affected rows

SET NOCOUNT OFF
SELECT *FROM EMPLOYEE_AMAN
GO

-- @Answer: Message- 10 rows affected.