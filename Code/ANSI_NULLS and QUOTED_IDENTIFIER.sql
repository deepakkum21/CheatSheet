----- ANSI_NULLS ON/OFF and QUOTED_IDENTIFIER ON/OFF Example -----

/**********************
Author	: Aman Verma
Date	: 01/06/2018
***********************/

--=======	ANSI_NULLS ON/OFF	=======

----	The ANSI_NULLS is used to specify the behaviour of comparison with NULL using any comparison operator(=,<>).
----	When it is set to ON. Then any comparison with NULL using above operators will result in false.

/* Example */
SET ANSI_NULLS ON
IF(NULL=NULL)
	PRINT 'The Result is true'
ELSE
	PRINT 'The result is false'
GO

-- @Answer: 'The result is false'

----	When it is set to off, any comparison with null using = or <> will work as usual. Such as NULL=NULL results in true, 1=NULL results in false

/* Example */
SET ANSI_NULLS OFF
IF(NULL=NULL)
	PRINT 'The Result is true'
ELSE
	PRINT 'The result is false'
GO

-- @Answer: 'The result is true'

SET ANSI_NULLS OFF
IF(1=NULL)
	PRINT 'The Result is true'
ELSE
	PRINT 'The result is false'
GO

-- @Answer: 'The result is false'

--=======	QUOTED_IDENTIFIER ON/OFF	=======

----	The QUOTED_IDENTIFIER ON/OFF is used to specify the behavior of single and double qoutes with literals or identifiers.
----	When it is set to ON. Then the double qoutes is used to represent T-SQL identifier such as table name, procedure name etc. and
----	Single qoute is used to represent the T-SQL literals.

/* Example */

SET QUOTED_IDENTIFIER ON
SELECT * FROM "EMPLOYEE_AMAN" WHERE NAME = 'Aman'
GO

-- @Answer: The Query will run without failure, because 'Aman' will act as literal and "EMPLOYEE_AMAN" will act as table name

SET QUOTED_IDENTIFIER ON
SELECT * FROM "EMPLOYEE_AMAN" WHERE NAME = "Aman"
GO

-- @Answer: Thw Query will fail, because "Aman" will act as an identifier, which should be a value or literal.

----	When QUOTED_IDENTIFIER is set to OFF. Then both single and double qoutes represents literals.

/* Example */

SET QUOTED_IDENTIFIER OFF
SELECT * FROM EMPLOYEE_AMAN WHERE NAME = "Aman" OR NAME = 'Ravi'
GO

-- @Answer: The Query will run without failure, because "Aman" and 'Ravi', both will act as literal.

SET QUOTED_IDENTIFIER OFF
SELECT * FROM "EMPLOYEE_AMAN" WHERE NAME = "Aman" OR NAME = 'Ravi'
GO

-- @Answer: The Query will fail because the "EMPLOYEE_AMAN" is considered as a literal, which should be an identifier (table_name).