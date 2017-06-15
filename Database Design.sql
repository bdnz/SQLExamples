
--SELECT [State] from [Shipping Table]

-- We should be able to add Gender and also Customer Middle Names because there might be some costumers with
-- same  Fist Name and maybe even same Last Name and NULL emailaddress. So, instead of going long way to deffiranciate
-- those customer with using joins (to see orders from order table and setting the id's) we could easily get that info
-- by using First Name, Mid Name and Last Name. Also date of birth would help.

-- Additionaly there are too many rows on State column we would be able to find a logic to group them, 
-- so instead having 857346 Rows we could have 50

--In my opinion there some of the data types should change. For example, First Name varchar(50)
																	   --Last Name nchar (10)
																	   --Email Address varchar(50)
																	-- Why wouldn't we have all of those varchar(50)?
																	-- Wouldn't it make it easier for the developer? So the developer
																	-- doesn't need to keep a track of the different datatypes. 
															
-- I believe there are also some problems with the Shipping Table. Well, not a problem but makes the Developers job harder.
-- So, what I see is there are no relationship from Shipping Table to any other table. If we can create some relations
--with other tables developers job would be easier.

-- I have noticed that there are 5 out of 6 tables names includes 'table' (Shipping Table, Order Table, etc.)
-- I would probably change those tables names into either single word (Shipping, Order, etc)
-- I have noticed this because there were too many times that I was trying to call the table by the name and even I was writing
-- the correctly, compiler wasn't working and giving me an error saying no such a table name. So I started to
-- drag everything from the list (you have showed me this trick)
