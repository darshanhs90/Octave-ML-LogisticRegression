function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
for i=1:m,
s=sigmoid(X*theta);
J=J+(1/m).*(-y(i).*log(s(i))-((1-y(i)).*log(1-s(i))));
end
%Grad calculation
for h=1:size(X,2),
	temp=0;	
	for i=1:m,
	temp=temp+((s(i))-y(i)).*X(:,h)(i);
	end
	temp=temp/m;
	grad(h)=temp;
end


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end

