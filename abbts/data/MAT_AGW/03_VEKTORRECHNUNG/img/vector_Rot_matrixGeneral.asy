settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(5cm);
import graph;
usepackage("amsmath");

pair p = (2,1);
real phi = 35;
pair p_strich = rotate(phi)*p;


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), grey, Arrow, L=Ly);

Label Lp = Label("$\vec{p}$", align=2E, position=EndPoint);
draw((0,0) -- p, blue+linewidth(1.5), Arrow, L=Lp);
Label Lpx = Label("$p_x$", align=S, position=EndPoint);
draw(p -- (p.x, 0), blue+dashed, L=Lpx);
Label Lpy = Label("$p_y$", align=W, position=EndPoint);
draw(p -- (0, p.y), blue+dashed, L=Lpy);



Label Lps = Label("$\vec{p'}$", align=2E, position=EndPoint);
draw((0,0) -- p_strich, red+linewidth(1.5), Arrow, L=Lps);
Label Lpsx = Label("$p'_x$", align=S, position=EndPoint);
draw(p_strich -- (p_strich.x, 0), red+dashed, L=Lpsx);
Label Lpsy = Label("$p'_y$", align=W, position=EndPoint);
draw(p_strich -- (0, p_strich.y), red+dashed, L=Lpsy);

Label Lang = Label("$\varphi$", align=N, position=MidPoint);
path ang = arc((0,0), 1, 26.56, 26.56+phi);
draw(ang, grey, Arrow, L=Lang);



