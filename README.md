# Multi-class-Support-Vector-Machine
I have used MATLAB’s importdata function to load X_test, X_train, Y_test and Y_train. Binary Support machine Classifier model is used to train multi class data using one versus all approach. There are totally 25 classes in the given data set. So I have trained 25 SVM models. fitcsvm is used to train these 25 SVM models. This function takes X_train, Y_train in vector form, Kernel function (Polynomial in this case) and polynomial order (which is 2).  While training each model ‘k’ we pass each samples value for kth class (either 0 or 1). All 25 models are tested against X_Test with the help of Predict function. This function will return value for each sample for each class. This vector form output is then converted to label with the help of vec2ind function. Output of the test data is then compared with values in Y_test to calculate number of correct prediction using for loop. Accuracy is calculated using following formulae:

  Accuracy= (Number of correct predictions / total numbers of values at Y_test)*100

X_train: Attributes of training data
Y_train: Label of thr training data
X_test: Attributes of testing data
Y_test: Label of thr testing data
I haven't uploaded these files since they are big. You can try this code for your own data set. Number of model to be trained depends on number of class.
