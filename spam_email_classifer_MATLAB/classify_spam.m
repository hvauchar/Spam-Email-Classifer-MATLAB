function [result] = classify_spam(document_vector,likelihoods_class_0,likelihoods_class_1,log_prior_class_0,log_prior_class_1)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
feature_vector=[];
for element=1:length(document_vector)
    if document_vector(element)> 0
        feature_vector=[feature_vector 1];
    else
        feature_vector=[feature_vector 0];
    end
end

[log_posterior_class_0,log_posterior_class_1] = calculate_class_posteriors(feature_vector,likelihoods_class_0,likelihoods_class_1,log_prior_class_0,log_prior_class_1);
if log_posterior_class_0 > log_posterior_class_1
    result=0;
else
    result=1;
end
end

