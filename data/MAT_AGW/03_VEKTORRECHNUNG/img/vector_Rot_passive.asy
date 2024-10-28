settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (2,2);
real phi = 20;


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), cyan, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), cyan, Arrow, L=Ly);

Label Lx_ = Label("$x'$", align=E, position=EndPoint);
draw((0,0) -- rotate(phi)*(3.0,0), magenta, Arrow, L=Lx_);
Label Ly_ = Label("$y'$", align=N, position=EndPoint);
draw((0,0) -- rotate(phi)*(0,1.5), magenta, Arrow, L=Ly_);


Label Lp = Label("$\vec{p}$", align=SE, position=MidPoint);
draw((0,0) -- p, grey+linewidth(1.5), Arrow, L=Lp);
draw(p -- (p.x, 0), grey+dashed);
draw(p -- (0, p.y), grey+dashed);

draw(p -- (2.56342553*cos(phi*pi/180), 2.56342553*sin(phi*pi/180)), magenta+dashed);
draw(p -- (-1.19534495*sin(phi*pi/180), 1.19534495*cos(phi*pi/180)), magenta+dashed);

Label Lang = Label("$\varphi$", align=E, position=MidPoint);
path ang = arc((0,0), 1, 0, phi);
draw(ang, grey, Arrow, L=Lang);



