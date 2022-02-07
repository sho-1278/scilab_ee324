s = poly(0, 's')
n1 = 54
d1 = s + 19
G1 = n1 / d1
S1 = syslin('c', G1)//S1 is the required continuous time linear system
t = 0:0.05:10
plot(t, csim('c',t,S1))//csim commands simulates the unit step response
