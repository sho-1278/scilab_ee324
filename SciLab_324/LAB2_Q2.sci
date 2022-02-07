s = poly(0, 's')
t = 0:0.0001:10
Lst=[]
k=1:1:100
for i=1:1:100
    n1 = i
    d1 = s + 19
    G1 = n1 / d1
    S1 = syslin('c', G1)//S1 is the required continuous time linear system
    y=csim('step',t,S1)
    steady_value = y($)//there are 201 steps in the simulation so finally attained value is steady state
    r = 1
    while y(r)<0.1*steady_value
        r=r+1
    end
    lower_lim=t(r)
    r = 1
    while y(r)<0.9*steady_value
        r=r+1
    end
    upper_lim=t(r)
    Lst($+1)=upper_lim-lower_lim
end
plot(k, Lst)
