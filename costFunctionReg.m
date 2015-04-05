function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
sum1=0;
for i=2:size(X,2),
sum1=sum1+theta(i)^2;
end
sum1=(sum1*lambda)/(2*m);
s=sigmoid(X*theta);
for i=1:m,
J=J+(1/m).*(-y(i).*log(s(i))-((1-y(i)).*log(1-s(i))));
end
size(J);
J=J+sum1;
%Grad calculation
for h=1:size(X,2),
	temp=0;	
	for i=1:m,
	temp=temp+((s(i))-y(i)).*X(:,h)(i);
	end
if(h!=1),
temp=temp+(lambda*theta(h));
end
	temp=temp/m;
	grad(h)=temp;
end
fprintf('theta')
size(theta)
theta
fprintf('X')
size(X)
fprintf('Y')
size(y)
fprintf('S')
size(s)





% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
