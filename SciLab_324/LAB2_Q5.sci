s= poly(0, 's')
t=0:2:10 // tau is set to 2
G1 = syslin('c', (s+5)/((s+4)*(s+2)))//continuous linear time system for case first
G2 = syslin('c', (s+5)/(s+4))//continuous linear time system for case second(i.e 1/(s+2) term is not taken directly)
G3 = syslin('c', 1/(s+2))//continuous linear time system for as a second transfer function in series(i.e 1/(s+2) term is not taken directly)
plot(t, csim('step', t, G1), '*-r') //simulating the step response plotting for the case first with star marks and red color curve
y1 = csim('step', t, G2) //simulate the step response for only the G2 transfer function and storing vector in y1
plot(t, csim(y1, t, G3), 'o-g')//simulating the vector with the second transfer function and plotting with o marks and green color
y2 = csim('step', t, G3)//simulate the step response for only the G3 transfer function and storing vector in y2
plot(t, csim(y2, t, G2))//simulating with G2 and plotting
legend(["case-1"], ["case-2"],["case-3"], pos=5)//marking the legends according to the indexes of the plot
xs2png(0, 'five_c.png')//saving the plot as a png file in desktop
