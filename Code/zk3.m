G= zpk([-6.93+6.93i -6.93-6.93i],[0 0 -13.86],1);
z= 0.5;
figure(1);
rlocus(G);%根轨迹
sgrid(z,'new');
axis([-10 5 -10 10]);%阻尼比0.5
figure(2);rlocus(G);hold on;%阻尼比0.5时根轨迹增益
K=25.5;
rlocus(G,K);%阻尼比0.5时闭环特征根；
sys=tf([3.0596],[0.05 1.9688 17.6946 122.3838]);
figure(3);
t=0:0.01:3;
step(sys,t);%单位阶跃响应
grid;