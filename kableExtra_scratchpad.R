library(magick)

setwd("H:/R/kableExtra")
list.files()

# first run flexdashboard.Rmd to create html table

# then take webshot of local html file, using selector to get just table
url <- "file:///H:/R/kableExtra/flexdashboard_test.html"

# pdf conversion didn't work
# webshot(url = url, delay = 0.5, zoom = 2, selector = "table", file = "webshot.pdf")
webshot(url = url, delay = 0.5, zoom = 2, selector = "table")

# you can then use magick to import png and convert to pdf, but the png actually looks crisper
# webshot_png <- image_read("webshot.png")
# webshot_png
# 
# image_write(x, path = "webshot_converted.pdf", format = "pdf")


# doesn't work because image is not a plot
# pdf("webshot_converted.pdf")
# x
# dev.off()

# doesnt seem to work
# library(convertGraph)
# convertGraph("webshot.png", "webshot_converted.pdf", path = "C:\\Users\\sjdevine\\AppData\\Roaming\\PhantomJS" )
