#Read file
library('reshape2')
setwd('C:/Users/carlo/Desktop/LOAN PREDICCTION PROJECT/Exercise 1')
data<-read.csv('Loan_Dataset.csv',header=T,na.strings=c("", "NA"))
summary(data)# Summary of data pior cleaning 
dim(data)
data$Married[which(is.na(data$Married))]<-'Yes'
data$Gender[which(is.na(data$Gender))]<-'Male'# Used mode to fill in the missing values. Central tendency measure 
data$Dependents[which(is.na(data$Dependents))]<-'0'#Used mode to fill in the missing values. Central tendency measure
data$LoanAmount[which(is.na(data$LoanAmount))]<-mean(data$LoanAmount,na.rm = TRUE) #Used mean to fill in the missing values. Central tendency measure
data$Loan_Amount_Term[which(is.na(data$Loan_Amount_Term))]<-mean(data$Loan_Amount_Term,na.rm = TRUE) #Used mean to fill in the missing values.Central tendency measure
data$Self_Employed[which(is.na(data$Self_Employed))]<-'No'
new_data<-data[-c(which(is.na(data$Credit_History))),]
summary(new_data)
rownames(new_data)<-new_data[,1]
new_data[,1]<-NULL
new_data$Credit_History_f<-as.factor(new_data$Credit_History)# Factor Target attribute Credit_History
summary(new_data)
new_data[,10]<-NULL
summary(new_data)
IQR_ApplicantIncome=quantile(new_data$ApplicantIncome, 0.75)-quantile(new_data$ApplicantIncome, 0.25)
value_IQR_ApplicantIncome=quantile(new_data$ApplicantIncome, 0.75)+1.5*IQR_ApplicantIncome
new_data$ApplicantIncome[which(new_data$ApplicantIncome>value_IQR_ApplicantIncome)]<-value_IQR_ApplicantIncome


IQR_CoapplicantIncome=quantile(new_data$CoapplicantIncome, 0.75)-quantile(new_data$CoapplicantIncome, 0.25)
value_IQR_CoapplicantIncome=quantile(new_data$CoapplicantIncome, 0.75)+1.5*IQR_CoapplicantIncome
new_data$CoapplicantIncome[which(new_data$CoapplicantIncome>value_IQR_CoapplicantIncome)]<-value_IQR_CoapplicantIncome


IQR_LoanAmount=quantile(new_data$LoanAmount, 0.75)-quantile(new_data$LoanAmount, 0.25)
value_IQR_LoanAmounte=quantile(new_data$LoanAmount, 0.75)+1.5*IQR_LoanAmount
new_data$LoanAmount[which(new_data$LoanAmount>value_IQR_LoanAmounte)]<-value_IQR_LoanAmounte
str(new_data)

new_data$ApplicantIncome<- (new_data$ApplicantIncome-min(new_data$ApplicantIncome))/(max(new_data$ApplicantIncome)-min(new_data$ApplicantIncome))
new_data$CoapplicantIncome<- (new_data$CoapplicantIncome-min(new_data$CoapplicantIncome))/(max(new_data$CoapplicantIncome)-min(new_data$CoapplicantIncome))
new_data$LoanAmount<- (new_data$LoanAmount-min(new_data$LoanAmount))/(max(new_data$LoanAmount)-min(new_data$LoanAmount))
new_data$Loan_Amount_Term<- (new_data$Loan_Amount_Term-min(new_data$Loan_Amount_Term))/(max(new_data$Loan_Amount_Term)-min(new_data$Loan_Amount_Term))

summary(new_data)
boxplot(new_data)
str(new_data)
write_New_loan_dataset<-write.csv(new_data,'Loan_dataet_cleaned_normalized.csv')