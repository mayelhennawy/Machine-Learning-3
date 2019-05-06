function [all_theta] = oneVsAll(X, y, num_labels, lambda)

m=size(X, 1);
n=size(X, 2);

all_theta=zeros(num_labels, n + 1);

X=[ones(m, 1) X];

Theta1 = zeros(n,1);
Option=optimset('GradObj', 'on', 'MaxIteration', 50);
     
for i= 1:num_labels
    tmp=(y == i);
    thetaTmp(:,i) =  fmincg(@(t)(lrCostFunction(t,X,tmp,lambda)),Theta1,Option);
    all_theta(i,:)=thetaTmp(:,i)';
end

end
