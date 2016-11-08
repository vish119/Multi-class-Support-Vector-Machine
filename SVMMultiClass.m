X_train_file='F:\matlab\Assignment3Dataset\Multi class VidTIMIT Data\X_train.mat';
X_test_file='F:\matlab\Assignment3Dataset\Multi class VidTIMIT Data\X_test.mat';
Y_train_file='F:\matlab\Assignment3Dataset\Multi class VidTIMIT Data\Y_train.mat';
Y_test_file='F:\matlab\Assignment3Dataset\Multi class VidTIMIT Data\Y_test.mat';
X_train=importdata(X_train_file);
X_trainT = transpose(X_train);
X_test=importdata(X_test_file);
X_testT = transpose(X_test);
Y_train=importdata(Y_train_file);
Y_test=importdata(Y_test_file);
Y_train_vertex = full(ind2vec(Y_train,25));
SVMModel = cell(25,1);
Y_label= zeros(25,1000);
score=zeros(25,1000);
for k=1:25
    SVMModel{k} = fitcsvm(X_train,Y_train_vertex(k,:),'KernelFunction','polynomial','PolynomialOrder',2);
end
for k=1:25
    Y_label(k,:) =predict(SVMModel{k},X_test);
end
y_test_SVN=vec2ind(Y_label);

Correct_Predction_SVM=0;
for i=1:length(Y_test)
    if Y_test(i) == y_test_SVN(i)
        Correct_Predction_SVM= Correct_Predction_SVM+1;
    end
end
disp(Correct_Predction_SVM);
SVM_accuracy=(Correct_Predction_SVM/length(Y_test))*100;

Ouput = sprintf('Percentage of accuracy on test data using SVM(Polynomial Kernel)  %f',SVM_accuracy);
disp(Ouput);