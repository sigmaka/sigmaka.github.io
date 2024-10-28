settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.75cm);
import graph;
usepackage("amsmath");

pair p = (2,1);
pair t = (1,0);


Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (2.5,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,1), grey, Arrow, L=Ly);


Label Lp = Label("$\vec{p}$", align=NW, position=MidPoint);
draw((0,0) -- p, cyan+linewidth(1.25), Arrow, L=Lp);
Label Lp_ = Label("$\vec{p'}$", align=SE, position=MidPoint);
draw((0,0) -- p+t, magenta+linewidth(1.25), Arrow, L=Lp_);

Label Lang = Label("$\vec{t}$", align=N, position=MidPoint);
draw(p -- p+t, grey+linewidth(1.0), Arrow, L=Lang);



