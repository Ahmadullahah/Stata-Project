****Hausman test(Random vs fixed effect)*******

xtreg ArrivalIDPs HUMDelivered SecSituation_numeric IDPInConflicts IDPsNatDisaster pashtun_ethno HLTClinics EduSchoolExist, fe
estimates store fixed
xtreg ArrivalIDPs HUMDelivered SecSituation_numeric IDPInConflicts IDPsNatDisaster pashtun_ethno HLTClinics EduSchoolExist, re
estimates store random
hausman fixed random, sigmamore

*Fisrt of all, set the data as panel
xtset SettlementID Round

********************Summary Statistics 
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0

eststo diff: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno, by(HUMDelivered) unequal


esttab Aid_Recieved Aid_not_Recieved diff, cells("mean(pattern(1 1 0) fmt(2)) sd(pattern(1 1 0)) b(star pattern(0 0 1) fmt(2)) t(pattern(0 0 1) par fmt(2))") label	


**************************
*Summary statistics and comparison of means
**************************

eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0

eststo diff: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno, by(HUMDelivered) unequal


esttab Aid_Recieved Aid_not_Recieved diff, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")	

*Round1

eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 10

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 10

eststo diff: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 10, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")

*Round2
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 11

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 11

eststo diff2: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 11, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff2, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")


*Round3
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 12

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 12

eststo diff3: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 12, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff3, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")

*Round4
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 13

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 13

eststo diff4: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 13, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff4, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")


*Round5
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 14

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 14

eststo diff5: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 14, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff5, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")	


*Round6
eststo Aid_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 1 & Round == 16

eststo Aid_not_Recieved: quietly estpost summarize ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if HUMDelivered == 0 & Round == 16

eststo diff6: quietly estpost ttest ArrivalIDPs Change_ArrivalIDPs HostInd HLTClinics EduSchoolExist pashtun_greg pashtun_ethno if Round == 16, by(HUMDelivered) unequal

esttab Aid_Recieved Aid_not_Recieved diff6, collab(, lhs("Variables")) cells("mean(pattern(1 1 0) fmt(3) label(Mean)) sd(pattern(1 1 0) label(SD))  b(star pattern(0 0 1) fmt(3) label(Diff.)) t(pattern(0 0 1) par fmt(3) label(t-stat.))") title("T-test of comparisons of means`=char(10)'Some additional information") nonumbers mtitles("Aid_Recieved" "Aid_not_Recieved" "Comparison")	


********************
forval round = 10/16 {
    dtable HostInd ArrivalIDPs Change_ArrivalIDPs i.IDPInConflicts i.IDPsNatDisaster i.SecSituation_numeric i.HLTClinics i.EduSchoolExist i.pashtun_greg i.pashtun_ethno if Round == `round', by(HUMDelivered) sample(, place(items) )
}



*******************************
*Event Study
******************************
ssc install xtevent

xtevent  ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.EduSchoolExist i.HLTClinics, fe panelvar( SettlementID ) timevar( Round ) policyvar( Post ) window(-2 1) impute(nuchange) plot

xtevent Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.EduSchoolExist i.HLTClinics, fe panelvar( SettlementID ) timevar( Round ) policyvar( Post ) window(-2 1) impute(nuchange) plot




*******************************
*Dtable
*******************************

dtable HostInd ArrivalIDPs Change_ArrivalIDPs i.Round i.IDPInConflicts i.IDPsNatDisaster i.SecSituation_numeric i.HLTClinics i.EduSchoolExist  i.pashtun_greg i.pashtun_ethno, by(HUMDelivered) nformat(%9.1f) title(Descriptive Statistics)


dtable HostInd ArrivalIDPs Change_ArrivalIDPs i.Round i.IDPInConflicts i.IDPsNatDisaster i.SecSituation_numeric i.HLTClinics i.EduSchoolExist  i.pashtun_greg i.pashtun_ethno, by(HUMDelivered) nformat(%9.1f) title(Descriptive Statistics) export("C:\Users\ahmad\Downloads\descriptive statistics.tex", as(tex) replace)



***********************************
*Main Regressions
***********************************

*Baseline 
reghdfe ArrivalIDPs HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.tex, replace ctitle(Stock IDPs) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)

reghdfe ArrivalIDPs HUMDelivered, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.tex, append ctitle(Stock IDPs) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.tex, append ctitle(Flow IDPs) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.tex, append ctitle(Flow IDPs) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)

*Baseline with lag1

reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.tex, replace ctitle(Stock IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)

reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.tex, append ctitle(Stock IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.tex, append ctitle(Flow IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.tex, append ctitle(Flow IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)




*Stock ArrivalIDPs with Control
reghdfe ArrivalIDPs HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.tex, replace ctitle(-1-) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered , absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-2-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered i.SecSituation, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-3-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-4-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-5-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-6-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno i.HLTClinics, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-7-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES)e(r2_a)



reghdfe ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-8-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES)e(r2_a)

*Flow ArrivalIDPs with controls

reghdfe Change_ArrivalIDPs HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.tex, replace ctitle(-1-) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered , absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-2-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered i.SecSituation, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-3-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-4-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-5-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-6-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno i.HLTClinics, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-7-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-8-) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES)e(r2_a)


*LAG1 Stock ArrivalIDPs

reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.tex, replace ctitle(-1-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-2-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.SecSituation, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-3-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES)e(r2_a)



reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-4-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-5-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES)e(r2_a)



reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-6-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES)e(r2_a)


reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno i.HLTClinics, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-7-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES)e(r2_a)



reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-8-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES)e(r2_a)

*LAG1 Flow ArrivalIDPs

reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.tex, replace ctitle(-1-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-2-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.SecSituation, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-3-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-4-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-5-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-6-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES)e(r2_a)


reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_ethno i.HLTClinics, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-7-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES)e(r2_a)



reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Round i.SecSituation_numeric i.IDPInConflicts i.IDPsNatDisaster i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb(i.SettlementID i.Round) vce(cluster SettlementID)
outreg2 using my_reg1.tex, append ctitle(-8-) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control IDPInConflicts, YES, Control IDPsNatDisaster, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES)e(r2_a)


**************************
* Controlling for the months since the end of last round. 
**************************

*Baseline

reghdfe ArrivalIDPs HUMDelivered i.Months, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.doc, replace ctitle(Stock IDPs) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe ArrivalIDPs HUMDelivered i.Months, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.doc, append ctitle(Stock IDPs) ///
keep(HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered i.Months, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.doc, append ctitle(Flow IDPs) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered i.Months, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg2.doc, append ctitle(Flow IDPs) ///
keep(HUMDelivered ) ///
addtext(Settlement FE, YES, Round FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

*Baseline with lag1

reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Months, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.doc, replace ctitle(Stock IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe ArrivalIDPs HUMDelivered L1.HUMDelivered i.Months, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.doc, append ctitle(Stock IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Months, absorb( i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.doc, append ctitle(Flow IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)

reghdfe Change_ArrivalIDPs HUMDelivered L1.HUMDelivered i.Months, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg3.doc, append ctitle(Flow IDPs) ///
keep(HUMDelivered L1.HUMDelivered) ///
addtext(Settlement FE, YES, Round FE, YES, Control_monthsSinceLastRound, YES)e(r2_a)




************************************
*Interection Terms
************************************

*Arrival IDPs

reghdfe ArrivalIDPs i.HUMDelivered##conflict_res_5 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, replace ctitle(Using -reg-) ///
keep(HUMDelivered HUMDelivered##conflict_res_5 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)


reghdfe ArrivalIDPs i.HUMDelivered##conflict_res_1 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-1-) ///
keep(HUMDelivered HUMDelivered##conflict_res_1 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)

reghdfe ArrivalIDPs i.HUMDelivered##disaster_res_5 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-2-) ///
keep(HUMDelivered HUMDelivered##disaster_res_5 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)

reghdfe ArrivalIDPs i.HUMDelivered##disaster_res_1 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-3-) ///
keep(HUMDelivered HUMDelivered##disaster_res_1 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)


*Change in IDPs

reghdfe Change_ArrivalIDPs i.HUMDelivered##conflict_res_5 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, replace ctitle(Using -reg-) ///
keep(HUMDelivered HUMDelivered##conflict_res_5 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)


reghdfe Change_ArrivalIDPs i.HUMDelivered##conflict_res_1 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-1-) ///
keep(HUMDelivered HUMDelivered##conflict_res_1 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)

reghdfe Change_ArrivalIDPs i.HUMDelivered##disaster_res_5 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-2-) ///
keep(HUMDelivered HUMDelivered##disaster_res_5 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)

reghdfe Change_ArrivalIDPs i.HUMDelivered##disaster_res_1 i.Round i.SecSituation i.pashtun_greg i.HLTClinics i.EduSchoolExist, absorb( i.Round i.SettlementID) vce(cluster SettlementID)
outreg2 using my_reg1.doc, append ctitle(-3-) ///
keep(HUMDelivered HUMDelivered##disaster_res_1 ) ///
addtext(Settlement FE, YES, Round FE, YES, Control SecSituation, YES, Control pashtun_ethno, YES, Control HLTClinics, YES, Control EduSchoolExist, YES) e(r2_a)