New Scrapping Data 

con = url("http://biostat.jhsph.edu/~jleek/contact.html")


con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlcode = readLines(con)
close(con)

htmlcode

> q1 <- sqldf("select pwgtp1 from acs where AGEP < 50")
Loading required package: tcltk
> View(`q1`)
> q2 <- sqldf("select * from acs where AGEP < 50")
> View(`q2`)
> q3 <-sqldf("select * from acs where AGEP < 50 and pwgtp1")
> View(`q3`)
> q4 <- sqldf("select * from acs")
> View(`q4`)
> ans3 <-unique(acs$AGEP)
> q3-1 <- sqldf("select distinct pwgtp1 from acs")
Error in q3 - 1 <- sqldf("select distinct pwgtp1 from acs") : 
  could not find function "-<-"
> q3o1 <- sqldf("select distinct pwgtp1 from acs")
> View(`q3o1`)
> sum(ans3)
[1] 4098
> sum(q3o1)
[1] 164514
> q3o2 <- sqldf("select AGEP where unique from acs")
Error in sqliteExecStatement(con, statement, bind.data) : 
  RS-DBI driver: (error in statement: near "unique": syntax error)
> q2o3 <- sqldf("select distinct AGEP from acs")
> sum(q2o3)
[1] 4098
> View(`q2o3`)
> ans3[1:10]
[1] 43 42 16 14 29 40 15 28 30  4
> ans3 == q2o3

> c(numberofchars[[10]],numberofchars[[20]],numberofchars[[30]],numberofchars[[100]])
[1] 45 31  7 25

htmlcode = readLines(con)

numberofchars <- nchar(htmlcode)
acs <- read.csv("getdata-data-ss06pid.csv")

read.fwf(file, widths, header = FALSE, sep = "\t",
         skip = 0, row.names, col.names, n = -1,
         buffersize = 2000, ...)


readthisshit <- read.fwf("getdata-wksst8110.for",widths =c(-1,10,-4,4,-9,4,-9,4,-5,4) , col.names=c("WEEK","Nino1","NINO3","NINO34","NINO4"),skip=4)



