% in tabe baraye tabdile yek matris be matris balamosalasi ba estefade 
%az matrishaye haose holdere tarahi shode.
%
% input: A(matrise morabbaee).
%
% output: BM(matrise balamosalasie motenazer ba matrise A), 
%P(matris haose holdere motenazer ba matrise A).
%
% sample: [BM, P]=saMaxDx(A)
function[BM, PP]=saCBMHH(A)
T=A;
m=size(A,1);
PP=eye(m);
for i=1:m-1
    P=eye(m);
    X=A(i:m,i);
    P(i:m,i:m)=saHH(X);
    A=P*A;
    PP=P*PP;
end
BM=PP*T;


