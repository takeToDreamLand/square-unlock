function [] = ninecir(vec,radius)
% ���ư��վŹ������е�Բ
% vec Ϊ��������ֵ��ɵ�1*n������
% radiusΪԲ�뾶�����Բ�д
if nargin < 2;
    radius = 0.4;
end

tab = [1 3;1 2;1 1;2 3;2 2;2 1;3 3;3 2;3 1];


for i=1:3;
    for j=1:3;
        alpha=0:pi/20:2*pi;    %�Ƕ�[0,2*pi] 
        x=radius*cos(alpha)+j; 
        y=radius*sin(alpha)+i; 
        plot(x,y,'k-'); 
        hold on
    end
end
axis([0.3 3.7 0.3 3.7]);
hold on;
for i = 2:length(vec)
    u = tab(vec(i),1)-tab(vec(i-1),1);
    v = tab(vec(i),2)-tab(vec(i-1),2);
    quiver(tab(vec(i-1),1),tab(vec(i-1),2),u,v,'filled','LineWidth',3);
end
hold off;
% pause(0.8);
% pause(0.05);
