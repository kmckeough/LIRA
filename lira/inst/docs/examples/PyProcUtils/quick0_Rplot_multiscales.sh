
r --vanilla <<EOF >  quick0_Rplot_multiscales.log
##
#####    Making and pdf files of the specified data
##


infileQ0WaveletDat1 = 'quick0_Haar_64_output.txt'

Q0WaveletDat1 <- read.table(infileQ0WaveletDat1, header = TRUE, sep = "", quote = "\"'",
           na.strings = "NA", colClasses = NA, nrows = -1,
           skip = 0, check.names = FALSE,
           comment.char = "#",
           allowEscapes = FALSE, flush = FALSE,
           encoding = "unknown")

Q0MHIter <- Q0WaveletDat1[[1]]
Q0MHCovar <- Q0WaveletDat1[[2]]
Q0MHLevel0 <- Q0WaveletDat1[[3]]
Q0MHLevel1 <- Q0WaveletDat1[[4]]
Q0MHLevel2 <- Q0WaveletDat1[[5]]
Q0MHLevel3 <- Q0WaveletDat1[[6]]
Q0MHLevel4 <- Q0WaveletDat1[[7]]
Q0MHLevel5 <- Q0WaveletDat1[[8]]
Q0MHLevel6 <- Q0WaveletDat1[[9]]
Q0MHLevel7 <- Q0WaveletDat1[[10]]



xrangeQ0Wavelet <- numeric(2)
yrangeQ0Wavelet <- numeric(2)
xrangeQ0Wavelet[1] = 0.
xrangeQ0Wavelet[2] = 0.4
yrangeQ0Wavelet[1] = 0.
yrangeQ0Wavelet[2] = 0.4


## Each trace or 'time-series' (statistics jargon) plot
## 


## Next File:
##

png("Q0Haar_64_Level0_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel0,type="o",
xlab=' ',
ylab='Level 0',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)


dev.off()

## Next File:
##

png("Q0Haar_64_Level1_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel1,type="o",
xlab=' ',
ylab='Level 1',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)


dev.off()

## Next File:
##

png("Q0Haar_64_Level2_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel2,type="o",
xlab=' ',
ylab='Level 2',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)


dev.off()

## Next File:
##

png("Q0Haar_64_Level3_Line.png", height=240, width=960, units="px" )


plot(Q0MHIter,Q0MHLevel3,type="o",
xlab=' ',
ylab='Level 3',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)

dev.off()


## Next File:
##

png("Q0Haar_64_Level4_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel4,type="o",
xlab=' ',
ylab='Level 4',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)

dev.off()


## Next File:
##

png("Q0Haar_64_Level5_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel5,type="o",
xlab=' ',
ylab='Level 5',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)

dev.off()


## Next File:
##

png("Q0Haar_64_Level6_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel6,type="o",
xlab=' ',
ylab='Level 6',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)

dev.off()


## Next File:
##

png("Q0Haar_64_Level7_Line.png", height=240, width=960, units="px" )

plot(Q0MHIter,Q0MHLevel7,type="o",
xlab=' ',
ylab='Level 7',
pch='.',col="black",
cex.main=1.6,cex.axis=2.0,cex.lab=1.6)

dev.off()


