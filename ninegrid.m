function [ flag,body ] = ninegrid(vec)
% ninegrid(vec) �����������������������������rule()��������
% vec Ϊһ��1*nά��������nΪ�Ź���������ܲ���
body = zeros(3);
flag = 1;   % �ж��Ƿ��γɾ���ķ���λ
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



        
        