function [arr,vecstore] = main(stepcount)
% main �������Ź����������
% ���� %
% stepcount   �켣�ڵ���������ȡֵ��ΧΪ[4,9]
% ��� %
% arr �������оŹ���ⷨ�еľŹ������
% vecstore �������оŹ���ⷨ�еĽڵ�λ�õĶ�ά��������������У��Ź����ÿ���ⷨΪstepcountά������������ѵ�Ϊn*stepcount�ľ���vecstore
vec = 1:9;
arr = zeros(3,3,0); % �Ź�����󱣴棬Ϊ3*3*n����ά����
buf = zeros(3,3);   % �Ź������

vecstore = zeros(0,stepcount);
n = stepcount;
vec_out = [];
loop(vec_out,n);
%------------------------------------------%
% Ƕ�׺���loop������ʵ�ֲ�ͬ�����µĶ��ѭ�� %
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
