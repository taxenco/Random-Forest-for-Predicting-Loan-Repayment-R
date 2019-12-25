library(randomForest)  
library(caret)
library(e1071)
setwd('C:\Users\carlo\Desktop\Data science\ASDM\Exercise 1')
loan_train<-read.csv('Loan_dataet_cleaned_normalized.csv',header = T)
loan_train$Credit_History_f<-as.factor(loan_train$Credit_History_f)
set.seed(1234)
pd <-sample(2,nrow(loan_train),replace=TRUE,prob=c(0.8,0.2))
train <-loan_train[pd==1,]
summary(train)
validate <-loan_train[pd==2,]
rownames(train)<-train[,1]
train[,1]<-NULL
rownames(validate)<-validate[,1]
validate[,1]<-NULL
set.seed(222)
rf<-randomForest( formula = Loan_Status ~ .,data=train, ntree=145, mtry=5,importance= T,proximity=T)
print(rf)
plot(rf)
p1<-predict(rf,train)
p2<-predict(rf,validate)
confusionMatrix(p2,validate$Loan_Status)
tuneRF(x=subset(train,select = -Loan_Status),y = train$Loan_Status,stepFactor = 0.5, plot= T,ntreeTry = 100,trace = T,improve = 0.05)
hist(treesize(rf),main='No. Of nodes for the trees',col='Red')
varImpPlot(rf)
importance(rf)
varUsed(rf)