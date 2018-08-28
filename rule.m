function [ flag ] = rule(arr,pos_previous,pos_current)
% 判断取点是否符合原则的函数
% 返回0或1
% arr为九宫格的当前状态
% pos_previous代表上个点的矩阵坐标，即原点坐标
% pos_current代表当前要取的点的坐标，即取点坐标

flag = 1; % 符合条件标志位

% 获取两点的坐标
[p1(1),p1(2)] = ind2sub(size(arr),pos_previous);  % 原点的坐标
[p2(1),p2(2)] = ind2sub(size(arr),pos_current);   % 取点的坐标
distan = abs(p1-p2);
midone = (p1+p2)/2;

if arr(p2(1),p2(2)) ~= 0;   % 如果取点已经被取过了，则直接跳出返回0
    flag = 0;
    return;
end

if judge_mid(distan)  % 如果没有中间值则点正确
   if arr(midone(1),midone(2)) == 0;  % 如果中间值不为0则也正确
       flag = 0;        
   end
end

    
