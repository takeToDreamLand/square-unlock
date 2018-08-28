function [ flag,body ] = ninegrid(vec)
% ninegrid(vec) 将传入的向量进行排序，其排序满足rule()函数规则
% vec 为一组1*n维的向量，n为九宫格解锁的总步数
body = zeros(3);
flag = 1;   % 判断是否形成矩阵的符号位
for i = 1:length(vec)
    if i==1;
        body(vec(i)) = i;
    else
        if rule(body,vec(i-1),vec(i));
            body(vec(i)) = i;
        else
            flag = 0;
            return;
        end
    end
end



        
        