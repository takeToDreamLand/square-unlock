function [ flag ] = judge_mid( dif )
% �����ж�ֵ���Ϊ1������λ�ü��Ƿ��б����
% difΪ����ֵ�Ĳ�ֵ
flag = 0; 
exist_dif = [2 2;2 0;0 2];
for i=1:length(exist_dif);
    if(dif == exist_dif(i,:))
        flag = 1;
    end
end

