function y = ZC(x)
[rows columns] = size(x);
    for n=1:rows
        xrow=x(n,:);
        crossing=sum(abs(diff(xrow>0)));
        y(n,:)=crossing;
       
    end
end
