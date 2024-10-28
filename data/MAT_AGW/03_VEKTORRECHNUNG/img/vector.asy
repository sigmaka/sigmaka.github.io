settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(40pt));
unitsize(2.5cm);
import graph;
usepackage("amsmath");

pair a = (4,2);

Label Lx = Label("$x$", align=S, position=EndPoint);
draw((0,0) -- (4.5,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=W, position=EndPoint);
draw((0,0) -- (0,2.5), grey, Arrow, L=Ly);


Label La = Label("$\vec a$", align=N, position=MidPoint);
draw((0,0) -- a, magenta+linewidth(1.25), Arrow, L=La);

Label Lax = Label("$a_x$", align=S, position=EndPoint);
draw(a -- (a.x,0), magenta+dashed, L=Lax);
Label Lay = Label("$a_y$", align=W, position=EndPoint);
draw(a -- (0,a.y), magenta+dashed, L=Lay);



