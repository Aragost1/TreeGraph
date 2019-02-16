//select
active={};
active.style={};
function cl2(e){
if (!e.target) e=window.event.srcElement;
else e=e.target;
if (e.className=="t"){
active.style.backgroundColor='transparent';
active=e;
active.style.backgroundColor='#F0E68C';}
}
function ch(e){//tree!
e=document.getElementById(e);
if (!e.children) {//FireFox
 mark=e.childNodes[0].childNodes[0];} else {mark=e.children[0].children[0];}
if (mark.innerHTML=="[-]") {
 mark.innerHTML="[+]";
 if (!e.children) {
  for (var i=1;i<e.childNodes.length;i++)
   e.childNodes[i].style.display="none";} else { for (var i=1;i<e.children.length;i++) e.children[i].style.display="none";}
}
else if (mark.innerHTML=="[+]") {
 mark.innerHTML="[-]";
 if (!e.children) {
  for (var i=1;i<e.childNodes.length;i++)
   e.childNodes[i].style.display="block";} else { for (var i=1;i<e.children.length;i++) e.children[i].style.display="block";}
}
}
function cl2t(e,t){//text2frame
parent.frames[1].document.close();
parent.frames[1].document.open("text/html");
parent.frames[1].document.write("<pre>");
flag = t.lastIndexOf("\n");
if (flag!=-1) {
 i = 0;
 while (i!=flag){
  parent.frames[1].document.write(t.slice(i,t.indexOf("\n",i+1)));
  i = t.indexOf("\n",i+1);}
 parent.frames[1].document.write(t.slice(flag));}
else parent.frames[1].document.write(t);
cl2(e);
}
//ondblclick ie
document.ondblclick=cl;
function cl(e){
if (!e) e=window.event.srcElement;
if (e.className!="c"){e=e.parentElement||e.parentNode;if (e.className!="c"){return;}}
e=e.parentElement||e.parentNode;
if (e.className=="e") ch(e);
}