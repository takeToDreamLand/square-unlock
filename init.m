
% 九宫格解锁程序的起始程序
% 直接运行可以得到最大步数对应的解锁方案 
% 注释了绘图相关的部分代码
% 如果需要绘制出解决方案则反注释掉相应部分的代码

clear;
step = 8; % 解锁步数，比如4就是经过4个节点
[arr_set,vec_set] = main(step);

% 绘制解锁方案，不需要的话可以注释掉
%=======================================%
% a = zeros(1,length(vec_set));
% h = figure(1);
% set(h,'Resize','off','Unit','pixels','Position',[230 250 500 500]);
% for i = 1:10:length(vec_set);
%     if(ishandle(h))
%         ninecir(vec_set(i,:));
%         pause(0.2);
%     else
%         break;
%     end
% end
%=======================================%