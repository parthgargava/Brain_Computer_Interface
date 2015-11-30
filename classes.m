% clearvars;
% addpath(genpath('C:\Users\PARTH\Desktop\INternship\eeglab10.2.2.4b'));
% % addpath(genpath('C:\Users\PARTH\Desktop\INternship\libsvm-3.18'));
% %Read gdf file
% EEG1 = pop_biosig('C:\Users\PARTH\Desktop\INternship\blink1.gdf');
% EEG2 = pop_biosig('C:\Users\PARTH\Desktop\INternship\blink2.gdf');
% EEG3 = pop_biosig('C:\Users\PARTH\Desktop\INternship\blink3.gdf');
% EEG4 = pop_biosig('C:\Users\PARTH\Desktop\INternship\blink4.gdf');
% EEG5 = pop_biosig('C:\Users\PARTH\Desktop\INternship\wink1.gdf');
% EEG6 = pop_biosig('C:\Users\PARTH\Desktop\INternship\wink2.gdf');
% EEG7 = pop_biosig('C:\Users\PARTH\Desktop\INternship\wink3.gdf');
% EEG8 = pop_biosig('C:\Users\PARTH\Desktop\INternship\wink4.gdf');
% %event left
% EEG_left1 = pop_epoch( EEG1, {  '769'  }, [0  3], 'newname1', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left2 = pop_epoch( EEG2, {  '769'  }, [0  3], 'newname2', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left3 = pop_epoch( EEG3, {  '769'  }, [0  3], 'newname3', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left4 = pop_epoch( EEG4, {  '769'  }, [0  3], 'newname4', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left5 = pop_epoch( EEG5, {  '769'  }, [0  3], 'newname1', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left6 = pop_epoch( EEG6, {  '769'  }, [0  3], 'newname2', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left7 = pop_epoch( EEG7, {  '769'  }, [0  3], 'newname3', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_left8 = pop_epoch( EEG8, {  '769'  }, [0  3], 'newname4', 'GDF file epochs', 'epochinfo', 'yes');
% %event right
% EEG_right1 = pop_epoch( EEG1, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right2 = pop_epoch( EEG2, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right3 = pop_epoch( EEG3, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right4 = pop_epoch( EEG4, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right5 = pop_epoch( EEG5, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right6 = pop_epoch( EEG6, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right7 = pop_epoch( EEG7, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% EEG_right8 = pop_epoch( EEG8, {  '770'  }, [0  3], 'newname', 'GDF file epochs', 'epochinfo', 'yes');
% 
%  EEG_left12.data=cat(3,EEG_left1.data,EEG_left2.data);
%  EEG_left34.data=cat(3,EEG_left3.data,EEG_left4.data);
%  EEG_bleft.data=cat(3,EEG_left12.data,EEG_left34.data);
% 
%  
%  EEG_left56.data=cat(3,EEG_left5.data,EEG_left6.data);
%  EEG_left78.data=cat(3,EEG_left7.data,EEG_left8.data);
%  EEG_wleft.data=cat(3,EEG_left56.data,EEG_left78.data);
%  
%  EEG_right12.data=cat(3,EEG_right1.data,EEG_right2.data);
%  EEG_right34.data=cat(3,EEG_right3.data,EEG_right4.data);
%  EEG_bright.data=cat(3,EEG_right12.data,EEG_right34.data);
% 
%  EEG_right56.data=cat(3,EEG_right5.data,EEG_right6.data);
%  EEG_right78.data=cat(3,EEG_right7.data,EEG_right8.data);
%  EEG_wright.data=cat(3,EEG_right56.data,EEG_right78.data);
%  
%  bleft_features=[];
%  for i=1 : 4
%      temp1=EEG_bleft.data(i,:,:);
%      bleft_features=[bleft_features ; temp1]; 
%  end
%  for i=11:14
%      temp1=EEG_bleft.data(i,:,:);
%      bleft_features=[bleft_features ; temp1];
%  end
%  bright_features=[];
%  for i=1 :4
%      temp3=EEG_bright.data(i,:,:);
%      bright_features=[bright_features ; temp3];
%  end
%  for i=11 : 14
%      temp3=EEG_bright.data(i,:,:);
%      bright_features=[bright_features ; temp3];
%  end
%  
%  wleft_features=[];
%  for i=1 : 4
%      temp1=EEG_wleft.data(i,:,:);
%      wleft_features=[wleft_features ; temp1];
%      
%  end
%  for i=11:14
%      temp1=EEG_wleft.data(i,:,:);
%      wleft_features=[wleft_features ; temp1];
%  end
%  wright_features=[];
%  for i=1 :4
%      temp3=EEG_wright.data(i,:,:);
%      wright_features=[wright_features ; temp3];
%  end
%  for i=11 : 14
%      temp3=EEG_wright.data(i,:,:);
%      wright_features=[wright_features ; temp3];
%  end
%   
%  not=size(wright_features,3);
%  features1=zeros(not,8);
%  for i=1:not
%      for j=1:8
%          test = bleft_features(j,:,i);
%         %lfeatures(i,j)=rms(test);
%         features1(i,j)=log(bandpower(test,128,[0 5]));
%  end
%  end 
%  features2=zeros(not,8);
%  for i=1:not
%      for j=1:8
%          test = bright_features(j,:,i);
%       %rfeatures(i,j)=rms(test);
%         features2(i,j)=log(bandpower(test,128,[0 5]));
%      end
%  end
%  
%  features3=zeros(not,8);
%  for i=1:not
%      for j=1:8
%          test = wleft_features(j,:,i);
%         %lfeatures(i,j)=rms(test);
%         features3(i,j)=log(bandpower(test,128,[0 5]));
%  end
%  end 
%  features4=zeros(not,8);
%  for i=1:not
%      for j=1:8
%          test = wright_features(j,:,i);
%       %rfeatures(i,j)=rms(test);
%         features4(i,j)=log(bandpower(test,128,[0 5]));
%      end
%  end
%  
%  final=[features1 ; features2;features3 ;features4];
%  label1=zeros(40,1);
%  label2=ones(40,1);
%  label3=label2+1;
%  label4=label3+1;
%  label=[label1 ; label2 ; label3; label4];
%  final=[final , label];
%  final=final(randsample(1:length(final),length(final)),:); % random odering of rows
%  h=0.8*size(final,1); % taking 80%
%  t=1;
%  k=1;
%  u=1;
%  w=1;
%  S=zeros(128,8);
%  D=zeros(32,8);
%  for i=1:h
%      
%      S(i,:)=final(i,1:end-1);
%      E(i,:)=final(i,end);
%  end
%  for p=h+1:size(final,1) % taking 20 % and labels in a separate vector
%      D(w,:)=final(p,1:end-1);
%      N(w,1)=final(p,end);
%      w=w+1;
%  end
%   save('test.m','model');
%   model=svmtrain(E,S);
  
 model1 = load('test.mat')
 [predicted_label, accuracy, decision_values]=svmpredict(N,D,model1.model);
