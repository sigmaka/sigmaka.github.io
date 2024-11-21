settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (2,2);
real phi = 20;


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), grey, Arrow, L=Ly);


Label Lp = Label("$\vec{p}$", align=SE, position=MidPoint);
draw((0,0) -- p, cyan+linewidth(1.25), Arrow, L=Lp);
Label Lp_ = Label("$\vec{p'}$", align=NW, position=MidPoint);
draw((0,0) -- rotate(phi)*p, magenta+linewidth(1.25), Arrow, L=Lp_);

Label Lang = Label("$\varphi$", align=NE, position=MidPoint);
path ang = arc((0,0), 1, atan2(p.y,p.x)*180/pi, atan2(p.y,p.x)*180/pi+phi);
draw(ang, grey, Arrow, L=Lang);



