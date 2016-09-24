install.packages("RODBC")
require(RODBC)

#made the dsn from control panel. You have to install the right driver first
dsns <- odbcDataSources()  #lists the DSN's
db <- odbcConnect("testg", believeNRows = FALSE, rows_at_time = 1) #last argument not needed here
db

sqlQuery(db, "INSERT INTO users (name) VALUES ('asghar');")
usersTable <- sqlQuery(db, "SELECT * FROM users;", stringsAsFactors = FALSE)
usersTable  #it is a data frame

newTable <- sqlFetch(db, 'users') #fetch table into data.frame

close(db)

#sqlDrop(channel, sqtable)	#Remove a table from the ODBC database

#sqlSave(channel, mydf, tablename = sqtable, append = FALSE)	
#Write or update (append=True) a data frame to a table in the ODBC database