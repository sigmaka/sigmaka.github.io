settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(16pt));
unitsize(2mm);
import graph;
usepackage("amsmath");


filldraw((53,0)--(53,25)--(57,25)--(57,0)--cycle, grey);
filldraw(circle((55,25), 1));

Label Lv = Label("$v_0$", align=N, position=EndPoint);
draw((55,25) -- (65,33.39), Arrow, L=Lv);
Label Lalpha = Label("$\alpha$", align=E, position=MidPoint);
draw(arc((55,25), 7.5, 0, 40), Arrow, L=Lalpha);

//Label Ly = Label("$y$", align=N, position=EndPoint);
//draw((55,0) -- (55,10), BeginBar, Arrow, L=Ly);

//Label Lx = Label("$x$", align=E, position=EndPoint);
//draw((55,0) -- (65,0), BeginBar, Arrow, L=Lx);

Label Ly0 = Label("$y_0$", align=W, position=BeginPoint);
draw((45,25)--(65,25), dashed, L=Ly0);

real f(real t) {return -0.02*t**2 + 0.8*t + 25;}

path g = graph(f, 0, 60.5);
draw(shift((55,0))*g, red+linewidth(2));

Label Lt = Label("$x$ [m]", align=E, position=EndPoint);
draw((55,0) -- (120,0), Arrow, L=Lt);

Label Ly = Label("$y$ [m]", align=N, position=EndPoint);
draw((55,0) -- (55,40), Arrow, L=Ly);

pen p = white;
shipout(bbox(p,Fill));


