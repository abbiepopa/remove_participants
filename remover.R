###do not edit this section
remover<-function(d, n){
	return(d[which(d$studyid != n),])
}


###edit below
#if you want to preserve the dataset that has NO ONE REMOVED you will need to change "amc_old" to whatever you want the name of the unremoved dataset to be
#change "amc" to whatever the name of your dataset is
#change "noncompleters" to whatever the name of your list of studyids (that you want removed) is
#that's it! 

amc_old<-amc

for(i in noncompleters){
	amc<-remover(amc,i)
}