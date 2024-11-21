settings.render = 16;
settings.outformat = "svg";
defaultpen(fontsize(20pt));
unitsize(5cm);
import graph;
usepackage("amsmath");

pair a = (2,0.1);
pair b = (0.75,0.25);

pen bg=gray(0.9)+opacity(0.5);
fill((0,0)--a--a+b--b--cycle,bg);

pair c = (0.1,1);

draw(Label("$\vec a$",0.5), (0,0)--a, magenta+linewidth(1.25), Arrow);
draw(Label("$\vec b$",1,align=N), (0,0)--b, cyan+linewidth(1.25), Arrow);
draw(Label("$\vec{a}\times\vec{b}$",1,align=N), (0,0)--c, green+linewidth(1.25), Arrow);

draw(arc((0,0),a/abs(a)*0.1,c/abs(c)*0.1), grey);
draw(arc((0,0),b/abs(b)*0.1,c/abs(c)*0.1), grey);

//pen p = white;
//shipout();


