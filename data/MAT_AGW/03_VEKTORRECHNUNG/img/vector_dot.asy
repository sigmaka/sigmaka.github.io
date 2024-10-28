settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(2.5cm);
import graph;
usepackage("amsmath");

pair a = (4,2);
pair b = (1,3);

Label Lx = Label("$x$", align=E, position=EndPoint);
draw((0,0) -- (1,0), grey, Arrow, L=Lx);
Label Ly = Label("$y$", align=N, position=EndPoint);
draw((0,0) -- (0,1), grey, Arrow, L=Ly);


Label La = Label("$\vec a$", align=SE, position=0.75);
draw((0,0) -- a, magenta+linewidth(1.25), Arrow, L=La);
Label Lb = Label("$\vec b$", align=NW, position=MidPoint);
draw((0,0) -- b, cyan+linewidth(1.25), Arrow, L=Lb);

Label Lang = Label("$\varphi$", align=NE, position=MidPoint);
path ang = arc((0,0), 1, atan2(2,4)*180/pi, atan2(3,1)*180/pi);
draw(ang, grey, Arrow, L=Lang);

draw((2,1) -- b, cyan+dashed);

Label Lp = Label("Projektion von $\vec b$ auf $\vec a$", align=SE, position=MidPoint);
draw((2,1)-(-0.3,0.6) -- (0,0)-(-0.3,0.6), grey+fontsize(16pt), Arrows, L=Lp);
label("$=\vert\vec{b}\vert\cdot\cos(\varphi)$", (2.5,-0.75), grey+fontsize(16pt));


