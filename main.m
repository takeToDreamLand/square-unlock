function [arr,vecstore] = main(stepcount)
% main 用于求解九宫格解锁问题
% 输入 %
% stepcount   轨迹节点的最大步数，取值范围为[4,9]
% 输出 %
% arr 储存所有九宫格解法中的九宫格矩阵
% vecstore 储存所有九宫格解法中的节点位置的二维矩阵。在这个函数中，九宫格的每个解法为stepcount维的向量，将其堆叠为n*stepcount的矩阵vecstore
vec = 1:9;
arr = zeros(3,3,0); % 九宫格矩阵保存，为3*3*n的三维矩阵
buf = zeros(3,3);   % 九宫格矩阵

vecstore = zeros(0,stepcount);
n = stepcount;
vec_out = [];
loop(vec_out,n);
%------------------------------------------%
% 嵌套函数loop，用于实现不同步数下的多次循环 %
%------------------------------------------%
    function [] = loop(vec_out,n)
        if n == 0;
            [ flag,buf ] = ninegrid(vec_out);
            if flag;
                arr(:,:,end+1) = buf;
                vecstore(end+1,:) = vec_out;           
            end
        else
            vec_iter = vec(~ismember(vec,vec_out));
            for i = 1:length(vec_iter);
                vec_out(stepcount-n+1) = vec_iter(i);
                loop(vec_out,n-1);
            end
        end
    end

end
