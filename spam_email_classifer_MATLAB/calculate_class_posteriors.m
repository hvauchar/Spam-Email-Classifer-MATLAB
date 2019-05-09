function [log_posterior_class_0,log_posterior_class_1] = calculate_class_posteriors(feature_vector,likelihoods_class_0,likelihoods_class_1,log_prior_class_0,log_prior_class_1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
log_likelihood_class_0 = calculate_log_likelihoods_with_naive_bayes(feature_vector,0,likelihoods_class_0,likelihoods_class_1);
log_likelihood_class_1 = calculate_log_likelihoods_with_naive_bayes(feature_vector,1,likelihoods_class_0,likelihoods_class_1);

log_posterior_class_0 = log_likelihood_class_0 + log_prior_class_0;
log_posterior_class_1 = log_likelihood_class_1 + log_prior_class_1;
end

