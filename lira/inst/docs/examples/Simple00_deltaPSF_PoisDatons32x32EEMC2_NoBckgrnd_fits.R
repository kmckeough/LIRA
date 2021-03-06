require(lira)
require(FITSio)

obsfile = "exampledata/PoisDatonsEEMC2_32x32testE.090120c.fits"
obs <- readFITS(obsfile)
obsmat <- matrix(data=obs$imDat, nrow=obs$axDat$len[1], ncol=obs$axDat$len[2] )

## 
## This run has no background model
## (i.e. background=0 everywhere).
##

strtfile = "exampledata/start32x32_1.00.fits"
strt <- readFITS(strtfile)
strtmat <- matrix(data=strt$imDat, nrow=strt$axDat$len[1], ncol=strt$axDat$len[2] )

img <- lira(
  obs.matrix = obsmat,
  start.matrix= strtmat,
  out.file = "outputs/PoisDatons32x32EEMC2_NoBckgrnd_viaFits.out",
  param.file="outputs/PoisDatons32x32EEMC2_NoBckgrnd_viaFits.param",
  mcmc=TRUE, fit.bkg.scale = FALSE,
  max.iter=250, thin=1,
  burn=0,
  alpha.init=c(3,4,5,6,7))

pdf("outputs/PoisDatonsEEMC2_32x32testE_NoBckgrnd_viaFits_images.pdf", width=8, height=4.25)
par(mfrow=c(1,2))
image(obsmat, xaxt="n", yaxt="n", main="Observed Data")
image(img$final, xaxt="n", yaxt="n", main="Mean MultiScale of Data/Null Mis-Match")
dev.off()

