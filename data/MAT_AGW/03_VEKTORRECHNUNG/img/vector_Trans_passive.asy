settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (2,2);
pair t = (1,0.5);


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), cyan, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,2.5), cyan, Arrow, L=Ly);

Label Lx_ = Label("$x'$", align=E, position=EndPoint);
draw((0,0)+t -- t+(2.5,0), magenta, Arrow, L=Lx_);
Label Ly_ = Label("$y'$", align=N, position=EndPoint);
draw((0,0)+t -- t+(0,2.5), magenta, Arrow, L=Ly_);


Label Lp = Label("$\vec{p}$", align=NW, position=0.3);
draw((0,0) -- p, cyan+linewidth(1.25), Arrow, L=Lp);
draw(p -- (p.x, 0), grey+dashed);
draw(p -- (0, p.y), grey+dashed);
Label Lp = Label("$\vec{p'}$", align=SE, position=MidPoint);
draw(t -- p, magenta+linewidth(1.25), Arrow, L=Lp);

Label Lang = Label("$t$", align=SE, position=0.75);
draw((0,0) -- t, grey+linewidth(1), Arrow, L=Lang);



