settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(40pt));
unitsize(2.5cm);
import graph;
usepackage("amsmath");

pair a = (4,2);
pair b = (1,3);
pair c = a + b;
pair d = a - b;

Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (1,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,1), grey, Arrow, L=Ly);


Label La = Label("$\vec a$", align=N, position=MidPoint);
draw((0,0) -- a, magenta+linewidth(1.25), Arrow, L=La);
Label Lb = Label("$\vec b$", align=NW, position=MidPoint);
draw((0,0) -- b, cyan+linewidth(1.25), Arrow, L=Lb);
Label Lc = Label("$\vec c$", align=NW, position=MidPoint);
draw((0,0) -- c, invisible+linewidth(1.25), Arrow, L=Lc);
Label Ld = Label("$\vec d$", align=SW, position=MidPoint);
draw((0,0) -- d, blue+linewidth(1.25), Arrow, L=Ld);

Label Lbminus = Label("$-\vec b$", align=E, position=MidPoint);
draw(a -- d, cyan+dashed+linewidth(1.25), Arrow, L=Lbminus);

