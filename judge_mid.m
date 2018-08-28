function [ flag ] = judge_mid( dif )
% 用于判断值相差为1的两个位置间是否有别的数
% dif为两个值的差值
flag = 0; 
exist_dif = [2 2;2 0;0 2];
for i=1:length(exist_dif);
    if(dif == exist_dif(i,:))
        flag = 1;
    end
end

