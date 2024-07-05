# Load libraries
library(MtreeRing)
library(dplR)

###################### Import Wood data ######################################

# Import Data
#setwd("C:/Users/VegaB002/OneDrive - Universiteit Utrecht/Pictures/2023_10_27/8.duqueco/input")
setwd("~/CONDOR/8.duqueco/input")

# output_dir <- "C:/Users/VegaB002/OneDrive - Universiteit Utrecht/Pictures/2023_10_27/8.duqueco/output"
output_dir <- "~/CONDOR/8.duqueco/output"

####################### Samples ############################################

var = "sample_ID" # example: "PESL12"
extension = ".jpg"
img.path <- paste0(var, extension)
var_extension <- c(1,2,3,4)
result <- paste0("t", var, ".", 1:length(var_extension))
# READ
assign(result[1], ring_read(img=img.path, dpi=1100, plot=FALSE, magick=TRUE))
# DETECT
assign(result[2], ring_detect(get(result[1]), seg=4, method='canny', border.color='green', sample.yr=2023, incline=FALSE))
# MODIFY
assign(result[3], ring_modify(ring.data=get(result[2]), del = c(2,3,4)))# canny
## Add new Points by CLICKING
assign(result[4], ring_modify(ring.data=get(result[3]), add=TRUE))
# Calculate ring width length
rwl <- ring_calculate(ring.data=get(result[4]), seriesID = var)
## Save identified points
x <-get(result[4])
save(x, file = file.path(output_dir, paste0(var,"_points.RData")))
## Export modified t2
fn <- tempfile(fileext=".rwl")
write.rwl(rwl.df = rwl, fname = file.path(output_dir, paste0(var,".rwl")), format = "tucson")
write.csv(rwl, file = file.path(output_dir, paste0(var,".csv")))

################################### Evaluate ############################################

# step 1.1: MTreeRing

# Identify YEAR
# If Series is too high: replace (+ or -), add, remove
# If series is too low: replace (+ or -), add, remove

BEST_SERIE = "PESL12"
saved_points <- ('~/CONDOR/8.duqueco/output')
extension = "_points.RData"
points.path <- paste0(saved_points, BEST_SERIE, extension)
str(points.path)
load(points.path) #
loaded <- paste0("t", substr(BEST_SERIE2, start = 5, stop = 6),".4")
str(loaded)
# Call the plots
t3 <- ring_modify(ring.data = get(loaded), del = c(1)) # first identified ring removed
t4 <- ring_modify(ring.data = t3, add=TRUE)
# Ring calculation
rw.df <- ring_calculate(ring.data = t4, seriesID = BEST_SERIE)
str(rw.df)
