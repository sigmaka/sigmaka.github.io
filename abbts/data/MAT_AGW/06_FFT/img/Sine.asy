settings.outformat = "svg";
defaultpen(fontsize(12pt));
unitsize(0.75cm);
import graph;
usepackage("amsmath");

real range_u = -3;
real range_o = 3;
real time = 15;
real omega = 0.5;
real y_hat = 3;
real phi0 = -pi/6;

// gridlines
for(int i=(int)range_u; i < range_o+1; ++i) {
  draw((-0.1,i) -- (time+0.1,i), lightgray);
	string s= (string)((i)/1);
	//label(s, (-0.5,i), black+fontsize(16pt));
}
for(int i=0; i < (int)(time+1); ++i) {
  draw((i,range_u - 0.1) -- (i,range_o + 0.1), lightgray);
	string s= (string)(i/1);
	//label(s, (i,range_u-0.5), black+fontsize(16pt));
}

// axes
Label y_ax = Label("$y(t)$", align=2N, position=EndPoint, black);
draw((0,range_u - 0.1) -- (0,range_o+0.75), arrow = Arrow, black, L=y_ax);
Label x_ax = Label("$t$", align=2E, position=EndPoint);
draw((-0.1,0) -- (time+0.75,0), arrow = Arrow, black, L=x_ax);
//label("$x_a$", (1,range_o+0.75), align=2N, red);

//label("$\cos$", (0.5,-1.5), align=E, blue+fontsize(32pt));
label("$y(t) = \hat{y} \cdot \sin(\omega t + \varphi)$", (6.5,2.5), align=E, red);


real f(real t) {return y_hat * sin(omega * t + phi0); }
path g = graph(f, 0, time);
draw(g, red+linewidth(1));

Label l_T = Label("$T = \frac{1}{f} = \frac{2 \pi}{\omega}$", align=2*N, position=MidPoint);
draw((-phi0/omega,-5) -- (-phi0/omega+2*pi/omega, -5), arrow=Arrows, L=l_T);
//draw((-phi0/omega+2*pi/omega+pi,0) -- (-phi0/omega+2*pi/omega+pi, -5.5), dashed);
//draw((-phi0/omega+pi,0) -- (-phi0/omega+pi, -5.5), dashed);

Label l_phi = Label("$-\frac{\varphi}{\omega}$", align=2*S, position=EndPoint);
draw((-phi0/omega,0) -- (-phi0/omega, -3.0), dashed, L=l_phi);
draw((-phi0/omega+2*pi/omega,0) -- (-phi0/omega+2*pi/omega, -3.0), dashed);

Label l_y = Label("$\hat{y}$", align=E, position=MidPoint);
draw((pi-phi0/omega,0) -- (pi-phi0/omega, y_hat), arrow=Arrows, L=l_y);

//Label l_xa = Label("$\hat{x}_{a}$", align=E, position=MidPoint);
//draw((-phi0/omega+0.5*pi/omega+2*pi,0) -- (-phi0/omega+0.5*pi/omega+2*pi, x_a), arrow=Arrows, L=l_xa);
