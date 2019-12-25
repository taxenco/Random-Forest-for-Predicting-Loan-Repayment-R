# Random Forest for Predicting Loan Repayment

The project consists of Predicting Loan Repayments using the Random Forest Supervised Learning algorithm. The Random forest uses an ensemble learning method for classification and the bagging technique. The trees in random forests are run in parallel. There is no interaction between these trees while building the trees.

# Getting Started

* Download [https://code.visualstudio.com/] or another alternative source-code editor of your preference
* Download the project on [https://github.com/taxenco/Random-Forest-for-Predicting-Loan-Repayment-R.git].
* Go to your terminal an run the the following command --> git clone https://github.com/taxenco/Random-Forest-for-Predicting-Loan-Repayment-R.git.
* Access to Visual Studio Code or another alternative source-code editor an open the project. Alternatively, you can access the project on through the terminal.
* Download R support for Visual Studio Code

# Prerequisites

* Visual Studio Code or another alternative source-code editor.
* Linux.
* R support for Visual Studio Code.
* Able to read CSV files.


# Objective of the project 

This project will implement a Random Forest algorithm on a dataset for classification purposes and predicting whether a customer will pay back the loan or not and also includes an assessment on whether the model has correctly predicted the outcome or not. 

# Theory on classification models

Classification is a statistical technique used for predicting, classifying and categorizing to
which of a set of categories a new observation belongs.The classification models need a collection of 
records "Training set",  which each record contains a set of attributes, one of the attributes is the class. 
A model will be built according to the classification technique chosen, and It will find a model for the class attribute 
as a function of the values of the other attributes. The model built should assign a class value as accurate as possible to 
the unseen records.  Finally, the model will be validated in Test set  in order to determine the accuracy of the model.

There are different techniques of classification that could be used for predicting, classifying
and categorizing. The most important are as follows:

* Decision Tree-based methods
* Rule-based methods
* Memory-based reasoning
* Neural Networks
* Support Vector Machines

Random Forest is a supervised learning algorithm that can be used for both regression and
classification tasks, and It belongs to the Decision Tree-based methods. The Decision
trees  is a tree in which each internal "non-leaf" node is labelled with an input feature. The
arcs coming from a node labelled with an input feature are labelled with each of the possible
values of the target or output feature, or the arc leads to a subordinate decision node on a
different input feature. Each leaf of the tree is labelled with a class or a probability distribution
over the classes

<img src="./rf.png" alt="Random Forest schema"/>




# Original data description

The original data set is made of 614 rows and 14 columns. The columns are as following:

* Loan_ID
* Gender
* Married
* Dependents
* Education
* Self_Employed
* ApplicantIncome
* Co-Applicant
* Income
* LoanAmount
* Loan_Amount_Term
* Credit_History
* Property_Area
* Loan_Status --> Target variable

 Note: Find the original data on /Data/Loan/Dataset.csv

# Cleaning Process 

The original data is not cleaned and normalized as there are attributes with missing values and others with outliers that distort the information extracted. Therefore cleaning and normalization techniques have been performed before to run the Random Forest algorithm.

The cleaning of the data 

* User table:
      - username primary key
      - avatar_url
      - name
      
* Topics table:
      - slug primary key
      - description
      - name

* Articles table:
      - article_id Primary Key
      - title
      - body
      - votes
      - topic Foreign Key 
      - author Foreign Key
      - created_at

* Comments table:
      - comment_id Primary Key
      - author Foreign Key
      - article_id Foreign Key 
      - votes
      - created_at 
      - body
      
# Built With

* Linux - Operating system
* R programming language
* CSV files

# Authors

- Carlos Beltran.

# Acknowledgments

The authors would like to thank Salford University.