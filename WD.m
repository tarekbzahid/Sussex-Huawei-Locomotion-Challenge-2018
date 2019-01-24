function wavletpower=WD(x)
[rows , ~] = size(x);
    for n=1:rows
        xrow=x(n,:);
        [c,l]=wavedec(xrow,3,'db2');
        y(n,:)=c;
        n
    end
%         wavletpower=(y.^2);
%         wavletpower=sum(wavletpower,2);
%         wavletpower=(wavletpower.^.5);
end
