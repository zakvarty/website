
make_hpp_png <- function(pngpath = "./content/home/ppp.png") {
xlim <- c(0,45.16)
ylim <- c(0,14.11)

png(file = pngpath, width = 1800, height = 600 )
par(mar = c(0,0,0,0), bg = 'black')

plot(x = NULL, y = NULL, xlim = xlim, ylim = ylim, asp =1)

n <- rpois(n = 1,lambda = 200)
pts <- cbind(runif(n)*xlim[2], runif(n)*ylim[2])
mks <- rexp(n)*3
points(x = pts[,1], y = pts[,2], pty = 16, cex = mks, lwd = 1.5, col = 'darkorange')

dev.off()
}
