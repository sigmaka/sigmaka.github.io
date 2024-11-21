settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (2,2);
pair t = (1,0.5);
real phi = 20;
pair p_s = rotate(-phi) * (p - t);


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), cyan, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), cyan, Arrow, L=Ly);

Label Lx_ = Label("$x'$", align=E, position=EndPoint);
draw((0,0)+t -- t+rotate(phi)*(2.5,0), magenta, Arrow, L=Lx_);
Label Ly_ = Label("$y'$", align=N, position=EndPoint);
draw((0,0)+t -- t+rotate(phi)*(0,2.5), magenta, Arrow, L=Ly_);


Label Lp = Label("$\vec{p}$", align=NW, position=0.3);
draw((0,0) -- p, cyan+linewidth(1.25), Arrow, L=Lp);
draw(p -- (p.x, 0), cyan+dashed);
draw(p -- (0, p.y), cyan+dashed);
Label Lp = Label("$\vec{p'}$", align=SE, position=MidPoint);
draw(t -- p, magenta+linewidth(1.25), Arrow, L=Lp);
draw(t + rotate(phi)*(0, p_s.y) -- p, magenta+dashed);
draw(t + rotate(phi)*(p_s.x, 0) -- p, magenta+dashed);

Label Lang = Label("$t$", align=SE, position=0.75);
draw((0,0) -- t, grey+linewidth(1), Arrow, L=Lang);

Label Lang = Label("$\varphi$", align=E, position=MidPoint);
path ang = arc(t, 2, 0, phi);
draw(ang, grey, Arrow, L=Lang);
draw(t -- (t.x+2, t.y), grey+dotted);