clc;clear all;close all;
M = csvread('spambase.csv');
data = [];
num_features = 48;
X_train_class_1 = [];
X_train_class_0 = [];

for i=1:length(M)
    if M(i,58)==1
        X_train_class_1=[X_train_class_1;M(i,1:48)];
    else
        X_train_class_0 = [X_train_class_0;M(i,1:48)];
    end      
end
likelihood_class_1 = mean(X_train_class_1)/100.0;
likelihood_class_0 = mean(X_train_class_0)/100.0;



%calculate the class prior
num_class_0 = length(X_train_class_0);
num_class_1 = length(X_train_class_1);
prior_probability_class_0 = num_class_0 / (num_class_0 + num_class_1);
prior_probability_class_1 = num_class_1 / (num_class_0 + num_class_1);
% disp(prior_probability_class_1)
% disp(prior_probability_class_0)
global log_prior_class_0;
global log_prior_class_1;
log_prior_class_0 = log10(prior_probability_class_0);
log_prior_class_1 = log10(prior_probability_class_1);
counter=0;
for i=1:length(M)
    if classify_spam(M(i,1:48),likelihood_class_0,likelihood_class_1,log_prior_class_0,log_prior_class_1)==M(i,58)
        counter = counter + 1;
    end
% disp(classify_spam(M(i,1:48),likelihood_class_0,likelihood_class_1,log_prior_class_0,log_prior_class_1))
% disp(M(1,58));
end
disp(["accuracy:",counter*100/4601.0])
str="Greeting Event";%"free free bumper offer and 100% discount on toys hurry up offer valid till today!!";
temp=getvector(str);
if classify_spam(temp,likelihood_class_0,likelihood_class_1,log_prior_class_0,log_prior_class_1)==1
    disp("spam!!!  :(");
else
    disp("safe     :)")
end