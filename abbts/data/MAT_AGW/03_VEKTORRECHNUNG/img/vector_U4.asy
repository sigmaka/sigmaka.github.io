settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (5.5,2.5);
pair t = (10,2);
real phi = 90;
pair p_s = rotate(-phi) * (p - t);


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), cyan, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), cyan, Arrow, L=Ly);

Label Lp = Label("$\vec{p}$", align=NW, position=MidPoint);
draw((0,0) -- p, cyan+linewidth(1.25), Arrow, L=Lp);
//draw(p -- (p.x, 0), cyan+dashed);
//draw(p -- (0, p.y), cyan+dashed);

Label Lx_ = Label("$x'$", align=N, position=EndPoint);
draw((0,0)+t -- t+rotate(phi)*(2.5,0), magenta, Arrow, L=Lx_);
Label Ly_ = Label("$y'$", align=W, position=EndPoint);
draw((0,0)+t -- t+rotate(phi)*(0,2.5), magenta, Arrow, L=Ly_);


Label Lp = Label("$\vec{p'}$", align=NE, position=MidPoint);
draw(t -- p, magenta+linewidth(1.25), Arrow, L=Lp);

Label Lang = Label("$t = \left[\begin{array}{c}10\\2\end{array}\right]$", align=S, position=MidPoint);
draw((0,0) -- t, grey+linewidth(1), Arrow, L=Lang);

Label Lang = Label("$\varphi = 90$°", align=2E, position=MidPoint);
path ang = arc(t, 2, 0, phi);
draw(ang, grey, Arrow, L=Lang);
draw(t -- (t.x+2, t.y), grey+dotted);
