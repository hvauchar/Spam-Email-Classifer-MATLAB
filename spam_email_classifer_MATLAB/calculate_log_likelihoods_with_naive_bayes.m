function [log_likelihood] = calculate_log_likelihoods_with_naive_bayes(feature_vector,Class,likelihoods_class_0,likelihoods_class_1)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
log_likelihood=0;

if Class==0
    for feature_index=1:length(feature_vector)
        if feature_vector(feature_index) == 1
            log_likelihood =log_likelihood + log10(likelihoods_class_0(feature_index));
        elseif feature_vector(feature_index) == 1
            log_likelihood =log_likelihood + log10(1.0 - likelihoods_class_0(feature_index));
        end
    end
elseif Class==1
    for feature_index=1:length(feature_vector)
        if feature_vector(feature_index) == 1
            log_likelihood =log_likelihood + log10(likelihoods_class_1(feature_index));
        elseif feature_vector(feature_index) == 1
            log_likelihood =log_likelihood + log10(1.0 - likelihoods_class_1(feature_index));
        end
    end  
end
end

