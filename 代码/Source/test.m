% �������͸��٣���119-128֡����в���,��Ŀ����٣�ÿһ֡��ִ�м��͸���
clear
close all
BeginFrame =119;       %��ʼ֡��
EndFrame = 128;         %��ֹ֡��
N = 3;
figure(1)    
for k = 1:N
    grname=strcat('../Data/PointCloud/',num2str(k*3+BeginFrame),'.mat');
    load(grname)
    subplot(1,3,k)
    plot3(-Ground(:,1),-Ground(:,2),Ground(:,3),'k.');
    axis equal
    axis([-80 80 -30 30 -10 10])% ������ע�����ͼ�ߵ����ֵ��Сֵ��MATLAB������ϵ�����ú���
    view(90,90);%�����ӵ�
    grid on%��ʾ����
end

figure(2)    
for k = 1:N
    grname=strcat('../Data/PointCloud/',num2str(k*3+BeginFrame),'.mat');
    load(grname)
    subplot(3,1,k)
    plot3(-Ground(:,1),-Ground(:,2),Ground(:,3),'k.');
    axis equal
    axis([-80 80 -30 30 -5 5])% ������ע�����ͼ�ߵ����ֵ��Сֵ��MATLAB������ϵ�����ú���
    view(90,0);%�����ӵ�
    grid on%��ʾ����
end

figure(3) 
grname=strcat('../Data/PointCloud/',num2str(+BeginFrame),'.mat');
load(grname)
subplot(3,1,k)
plot3(-Ground(:,1),-Ground(:,2),Ground(:,3),'k.');
axis equal
axis([-80 80 -30 30 -5 5])% ������ע�����ͼ�ߵ����ֵ��Сֵ��MATLAB������ϵ�����ú���
grid on%��ʾ����

    
    