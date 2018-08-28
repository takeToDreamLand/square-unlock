function [ flag ] = rule(arr,pos_previous,pos_current)
% �ж�ȡ���Ƿ����ԭ��ĺ���
% ����0��1
% arrΪ�Ź���ĵ�ǰ״̬
% pos_previous�����ϸ���ľ������꣬��ԭ������
% pos_current����ǰҪȡ�ĵ�����꣬��ȡ������

flag = 1; % ����������־λ

% ��ȡ���������
[p1(1),p1(2)] = ind2sub(size(arr),pos_previous);  % ԭ�������
[p2(1),p2(2)] = ind2sub(size(arr),pos_current);   % ȡ�������
distan = abs(p1-p2);
midone = (p1+p2)/2;

if arr(p2(1),p2(2)) ~= 0;   % ���ȡ���Ѿ���ȡ���ˣ���ֱ����������0
    flag = 0;
    return;
end

if judge_mid(distan)  % ���û���м�ֵ�����ȷ
   if arr(midone(1),midone(2)) == 0;  % ����м�ֵ��Ϊ0��Ҳ��ȷ
       flag = 0;        
   end
end

    
