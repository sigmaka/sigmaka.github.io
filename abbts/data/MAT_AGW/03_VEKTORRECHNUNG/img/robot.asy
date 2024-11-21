settings.outformat = "svg";
defaultpen(fontsize(16pt));
unitsize(10cm);
import graph;
usepackage("amsmath");

pair base = (0,0);
pair link = (1.0,0.5);
pair hand = (1.5,1.0);

dot(base, linewidth(10));
dot(link, linewidth(10));
dot(hand, linewidth(10));

Label Lp = Label("$\vec{p}_1$", align=2SE, position=EndPoint);
draw((base -- link), linewidth(5), L=Lp);
Label Lp = Label("$\vec{p}_2$", align=2SE, position=EndPoint);
draw((link -- hand), linewidth(5), L=Lp);
Label l_1 = Label("$l_1$", align=NW, position=MidPoint);
draw(shift(-0.02,0.04)*(base+(0.04,0.02) -- link+(-0.04,-0.02)), Arrows, L=l_1);
Label l_2 = Label("$l_2$", align=NW, position=MidPoint);
draw(shift(-0.03,0.03)*(link+(0.03,0.03) -- hand+(-0.03,-0.03)), Arrows, L=l_2);

Label Lv = Label("$\varphi_1$", align=2E, position=MidPoint);
draw(arc(base, 0.25, 0, 26.5), Arrow, L=Lv);
draw(arc(base, 0.03, 0, 360), linewidth(2));

draw(link -- link + link*0.5, dashed);
Label Lv = Label("$\varphi_2$", align=2NE, position=MidPoint);
draw(arc(link, 0.5, 26.5, 45), Arrow, L=Lv);
draw(arc(link, 0.03, 26.5, 386.5), linewidth(2));

Label Lx = Label("$x_0$", align=2E, position=EndPoint);
draw(base -- (0.5,0), red, Arrow, L=Lx);
Label Ly = Label("$y_0$", align=2N, position=EndPoint);
draw(base -- (0,0.5), red, Arrow, L=Ly);

Label Lx = Label("$x_1$", align=2SE, position=EndPoint);
draw(link -- link+(0.2,0.1), red, Arrow, L=Lx);
Label Ly = Label("$y_1$", align=2N, position=EndPoint);
draw(link -- link+(-0.1,0.2), red, Arrow, L=Ly);

Label Lx = Label("$x_2$", align=2NE, position=EndPoint);
draw(hand -- hand+(0.15,0.15), red, Arrow, L=Lx);
Label Ly = Label("$y_2$", align=2NW, position=EndPoint);
draw(hand -- hand+(-0.15,0.15), red, Arrow, L=Ly);

draw(hand -- hand+(0.03,-0.03) -- hand+(0.06,0.0), linewidth(5));
draw(hand -- hand+(-0.03,0.03) -- hand+(0.0,0.06), linewidth(5));

//label("base (fixed)", base, align=3S);
//label("end effector", hand, align=3N);

pen p = white;
shipout(bbox(p,Fill));