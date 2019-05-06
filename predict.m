function p = predict(Theta1,Theta2,X)

m=size(X, 1);
num_labels=size(Theta2, 1);

p=zeros(size(X, 1), 1);

X1=[ones(m,1) X];
X2=sigmoid(X1*Theta1');
X2=[ones(m,1) X2];
X3=sigmoid(X2*Theta2');
[~,p]=max(X3,[],2);

end
