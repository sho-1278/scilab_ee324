s = poly(0, 's')
t=0:0.001:3 //time steps for the simulation
function stepResponse(A)
    plot(t, csim('step',t,A))
endfunction
n1 = 100 //numerator of the transfer function
for i=0:0.25:2
    d1 = s^2 + 20*i*s + 100
    G1 = n1/d1
    S1 = syslin('c', G1) //declaring the linear time continuous system
    stepResponse(S1)
end
xs2png(0,'two_b.png')//saving the plot as a png file in the directory
