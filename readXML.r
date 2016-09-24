install.packages("XML")

require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlGame <- readHTMLTable(theURL, which=1, header=FALSE, stringsAsFactors=FALSE) #which says which table to grab
bowlGame

theURL <- "http://tnasoftwaretool.engr.oregonstate.edu:8080/TNAtoolAPI-Webapp/AgenSReport.html?&dbindex=3&popYear=2010"
agencies <- readHTMLTable(theURL, which=2, header=TRUE, stringsAsFactors=FALSE)
agencies  ##does not work for some reason





theURL <- "http://www.menupages.com/restaurants/fiores-pizza/menu"
thePage <- readLines(theURL)
thePage

pageRender <- htmlParse(thePage)

address <- xpathApply(pageRender, "//li[@class='address adr']/span[@class='addr street-address']",
                      fun = xmlValue)[[1]]
address

city <- xpathApply(pageRender, "//li[@class='address adr']/span/span[@class='locality']",
                   fun = xmlValue)[[1]]
city

headers <- xpathApply(pageRender, "//*[@id='restaurant-menu']/h3", xmlValue)
headers

items <- xpathApply(pageRender, "//table[starts-with(@class, 'prices')]")
items







require(plyr)
menu <- "http://www.menupages.com/restaurants/all-areas/all-neighborhoods/pizza/"
doc <- htmlParse(menu)
placeNameLink <- xpathApply(doc, "//table/tr/td[@class='name-address']/a[@class='link']",
                            fun=function(x){c(Name=xmlValue(x, recursive = FALSE),
                                              Link=xmlAttrs(x)[2])})
placeNameLink
placeNameLink <- ldply(placeNameLink)
placeNameLink





teaFile <- "http://www.jaredlander.com/data/SocialComments.xml"
require(XML)
teaParsed <- xmlToList(teaFile)
length(teaParsed)
str(teaParsed)
teaParsed[[1]][[1]]$id
teaParsed[[1]][[1]]$author$name
teaParsed[[1]][[1]]$published
teaParsed[[1]][[1]]$content$.attrs
