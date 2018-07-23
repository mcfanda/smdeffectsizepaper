library(cpower)
n<-30
m=c(8,16,18,19)
sp<-7.23
k<-length(m)

## linear trend ##
linear<-c(-3,-1,1,3)
dg_linear<-d.contr(linear,means = m,sd=sp,scale = "g")
test.contr(linear,d=dg_linear,n=n,scale = "g")
ci.contr(linear,dg_linear,n = n)
dz_linear<-d.contr(linear,means = m,sd=sp,scale = "z")
ci.contr(linear,dlz,n = n,scale = "z")

## quadratic trend ##

quad<-c(-1,1,1,-1)
dg_quad<- d.contr(quad,means = m,sd=sp,scale = "g")
test.contr(quad,d=dg_quad,n=n,scale = "g")
ci.contr(quad,dg_quad,n = n)

dz_quad<- d.contr(quad,means = m,sd=sp,scale = "z")
ci.contr(quad,dz_quad,n = n,scale = "z")


library(cpower)
m2<-c(10,7)
c2<-c(1,-1)
m4=c(10,7,7,7)
c4<-c(1,-1,-1,1)
sp<-4
k<-length(m)

## effect size computation
dg2<-d.contr(c2,means = m2,sd=sp,scale = "g")
dg4<-d.contr(c4,means = m4,sd=sp,scale = "g")

##  required n per cell  ##
power.contrast.t(c4,dg4,power = .80,scale = "g")
power.contrast.t(c2,dg2,power = .80, scale="g")

## transform dg in f  ##
f<-f.contr.d(c4,dg4,scale = "g")

