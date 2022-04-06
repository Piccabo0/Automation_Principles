G= tf(5,[conv([1,0],conv([1,1],[0.25,1]))]);%待校正系统的开环传递函数
Gc1 = tf([1,1],[0.08,1]);
G2 = series(G,Gc1);

G2=feedback(G,1);
G3=feedback(G1,1);
t=0:0.001:20;
step(G2,t);
figure,step(G3,t);