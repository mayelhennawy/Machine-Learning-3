function [J, grad] = lrCostFunction(theta, X, y, lambda)

m = length(y); 

J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================

Hypo= sigmoid(X.*theta);
J =-mean(y.*log(Hypo)+(1-y).*log(1-Hypo))+(lambda/2).*mean(theta(2:end).^2);
grad(1,1)=(1/m)*(X(:,1)'*(Hypo-y)); 
grad(2:end,1)=((1/m)*(X(:,2:end))'*(Hypo-y))+(lambda/m)*theta(2:end);
theta(1) = 0;
grad = grad(:);

end
