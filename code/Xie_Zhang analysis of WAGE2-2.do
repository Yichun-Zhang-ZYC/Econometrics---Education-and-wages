log using Xie_Zhang.log, replace
use Xie_Zhang.dta,
gen exper1=exper if exper<age
gen tenure1=tenure if tenure <= exper1
sum wage educ
tabulate tenure1
drop if tenure1>=.
save Xie_Zhang.dta, replace

use Xie_Zhang.dta, clear
scatter wage educ
sum wage educ
reg wage educ, robust
eststo r1
reg wage educ IQ KWW tenure1 age married black urban,robust
eststo r2
reg wage educ IQ KWW exper1 age married black urban,robust
eststo r3
reg wage educ IQ KWW tenure1 exper1 age hours married black urban,robust
eststo r4

gen bla_educ=black*educ
reg wage educ IQ KWW tenure1 exper1 age hours married black urban bla_educ,robust
eststo r5

gen br1=0 if !missing(brthord)
replace br1=1 if brthord==1
gen br2=0 if !missing(brthord)
replace br2=1 if brthord==2
gen br3=0 if !missing(brthord)
replace br3=1 if brthord==3
gen br4=0 if !missing(brthord)
replace br4=1 if brthord==4
gen br5_=0 if !missing(brthord)
replace br5_=1 if brthord>=5
gen br1_ed=br1*educ
gen br2_ed=br2*educ
gen br3_ed=br3*educ
gen br4_ed=br4*educ
gen br5_ed=br5_*educ

reg wage educ IQ KWW tenure1 exper1 age hours married black urban br2 br3 br4 br5_, robust
eststo r7
reg wage educ IQ KWW tenure1 exper1 age hours married black urban br2 br3 br4 br5_ br2_ed br3_ed br4_ed br5_ed,robust
eststo r8

esttab r1 r2 r3 r4
esttab r1 r4 r5
esttab r1 r4 r8
esttab r1 r2 r3 r4 using Table3.doc, ar2 label
esttab r4 r5 r7 r8 using Table4.doc, ar2 label
log close