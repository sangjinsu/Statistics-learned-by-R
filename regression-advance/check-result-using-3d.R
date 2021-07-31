library(rgl)
RSS <- function(intercept, slope){
  y_i_hat <- c(2, 4, 6, 8) * slope + intercept
  y_i <- c(1, 6, 4, 8)
  sum((y_i - y_i_hat)^2)
}
# vectoriaze
rss <- Vectorize(RSS)


open3d()
persp3d(rss,
        xlim = c(-5, 5),
        ylim = c(-2, 2),
        zlim = c(6, 15),
        n = 100)

rgl.spheres(
  x = 0.0005164763,
  y = 0.9499521173,
  z = RSS(0.0005164763, 0.9499521173),
  r = 0.05,
  color = 'red'
)

clear3d()
