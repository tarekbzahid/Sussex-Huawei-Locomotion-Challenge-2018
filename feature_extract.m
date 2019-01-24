% % % % % plot(x);
% % % % % clear
% % % % 
% % % % % accx=accx(:,(3:end));
% % % % 
% % % % % x=acc_x3(8,:);
% % % % % x=fft(x);
% % % % % x=abs(x);
% % % % % plot(x)
% 
% %% Acc X axis 
% Ax_mean=mean(accx,2);
% Ax_sd=std(accx,1,2);
%  Ax_skew=skewness(accx,0,2);
% Ax_kurt=kurtosis(accx,0,2);
% Ax_range=range(accx,2);
% 
% 
% %% Acc Y axis 
% Ay_mean=mean(accy,2);
% Ay_sd=std(accy,1,2);
% Ay_skew=skewness(accy,0,2);
% Ay_kurt=kurtosis(accy,0,2);
% Ay_range=range(accy,2);

% 
% %% Acc Z axis 
% Az_mean=mean(accz,2);
% Az_sd=std(accz,1,2);
% Az_skew=skewness(accz,0,2);
% Az_kurt=kurtosis(accz,0,2);
% Az_range=range(accz,2);
% 
% feature=horzcat(Ax_mean,Ax_sd,Ax_skew,Ax_kurt,Ax_range,Ay_mean,Ay_sd,Ay_skew,Ay_kurt,Ay_range, Az_mean,Az_sd,Az_skew,Az_kurt,Az_range);
%  
% %% power extarction
% powersquare=(accx.^2)+(Accypart2.^2)+(Acczpart2.^2);
% powersquare=(powersquare.^.2);
% power=sum(powersquare,2);
% % 
% feature=horzcat(feature,power);
% 
% %% zero crossing
% 
 Zx_zc=zc(Gyrxpart2);
% Zy_zc=zc(Gyrypart2);
% Zz_zc=zc(Gyrzpart2);
% 
% feature=horzcat(feature,Zx_zc,Zy_zc,Zz_zc);
% 
% %% wavelet features 
% 
%  Ax=WD(accx);
% Ay=WD(Accypart2);
% Az=WD(Acczpart2);
% % 
% Gyrox=WD(gyrx);
% Gyroy=WD(Gyrypart2);
% Gyroz=WD(Gyrzpart2);
% 
% % feature=horzcat(feature,Ax,Ay,Az,Gyrox,Gyroy,Gyroz);
% 
% %%prediction
% 
% [rows , ~] = size(feature);
% for n=1:rows
%         predictrow=feature(n,:);
%         yfit = trainedModel.predictFcn(predictrow)
%         prediction2(n,:)=yfit;
% end
% 
% for r=1:5698
%     
%     for c=2:6000
%         prediction(:,c)=label;
%     end
% end
% 
% 
