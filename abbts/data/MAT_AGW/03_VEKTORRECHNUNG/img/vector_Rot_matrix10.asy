settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(5cm);
import graph;
usepackage("amsmath");

pair p = (2,0);
real phi = 35;
pair p_strich = rotate(phi)*p;


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,1.5), grey, Arrow, L=Ly);

Label Lp = Label("[1, 0]", align=2NE, position=EndPoint);
draw((0,0) -- p, blue+linewidth(1.5), Arrow, L=Lp);
draw(arc((0,0), 2, 0, phi), grey+dashed);

Label Lpx = Label("$cos(\varphi)$", align=S, position=EndPoint);
Label Lpy = Label("$sin(\varphi)$", align=W, position=EndPoint);
draw((0,0) -- rotate(phi)*p, red+linewidth(1.5), Arrow);
draw(p_strich -- (p_strich.x, 0), red+dashed, L=Lpx);
draw(p_strich -- (0, p_strich.y), red+dashed, L=Lpy);

Label Lang = Label("$\varphi$", align=E, position=MidPoint);
path ang = arc((0,0), 1, 0, phi);
draw(ang, grey, Arrow, L=Lang);



