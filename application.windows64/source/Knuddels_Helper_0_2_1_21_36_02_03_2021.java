import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Knuddels_Helper_0_2_1_21_36_02_03_2021 extends PApplet {



public void setup() {
  
fill(255);
  rect(0,0,800,30);
      fill(0);
      textSize(30);
    text("Datei",0,25);
   fill(0);
      textSize(30);
    text("Frame",90,25);
      fill(0);
      textSize(30);
    text("Pixel",200,25);
    
     fill(0);
      textSize(30);
    text("+/-",700,25);
    noStroke();
    fill(0);
  rect(600,600,200,200);
 
    }
  


float    mouseovery=0; 
float mouseoverx=0;
int seeCountC=0;

int seeN=0;
int seeC=0;
int x=2;
int y=0;
int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
int  seeX=0; 
int tag=color(0);
int z=0;

int eof=0;
int eol=0;
int vox=0;
int voy=0;
int feld=1;

int num=1;
int sum=0;
int sumg=0;
int sumlx=0;
int sumly=0;
int sumlxg=0;
int sumlyg=0;
int getx=0;
int gety=0;
int dom=0;
int pop=0;
int point=color(0);
int rc=0;
int gc=0;
int bc=0;
int rcb=0;
int gcb=0;
int bcb=0;
int scb=0;
public void draw() {

  noStroke();
       if(scb<=254){
       scb++;
     fill(scb);
    rect(scb,620,255-scb,25); 
     }
     if(rcb<=254){
       rcb++;
     fill(rcb,0,0);
    rect(rcb,650,255-rcb,25); 
     }
  if(gcb<=254){
       gcb++;
     fill(0,gcb,0);
    rect(gcb,680,255-gcb,25); 
     }
  if(bcb<=254){
       bcb++;
     fill(0,0,bcb);
    rect(bcb,710,255-bcb,25); 
     }
    if(scb<=254){
      
     fill(rcb,gcb,bcb);
    rect(scb,740,255-scb,25); 
     }



  
  mouseovery = mouseY;
  mouseoverx = mouseX;
 
  if((mouseoverx>=700&&mouseoverx<=750)&&(mouseovery>=0&&mouseovery<=30)){
    if   (mousePressed && (mouseButton == LEFT)){
      num++;dom=1;  sumlx=0;if(num>100)num=100;
sumly=0;} 
       if (mousePressed && (mouseButton == RIGHT)){
      
      num--;dom=1;  sumlx=0;if (num<2)num=1;
sumly=0;} 
  }
  
  if(dom==1){dom=0;
    
      fill(200);
           rect(0,30,600,600);
  
          feld=600/(num+1);
        
          
   while(sumly<num+1){ 
     if(sumlx<=num)
     {
       fill(255);
       stroke(0);
          rect(feld*sumlx,30+feld*sumly,feld,feld);sumg++; sumlx++;}else {sumlx=0;sumly++;}
         

    
     }}
     
     
     
   
         if((mouseoverx>=0&&mouseoverx<=600)&&(mouseovery>=30&&mouseovery<=600)){
 if (mousePressed){    
               gety= (int)mouseovery; 
  getx=(int)mouseoverx ;  
  
  sumlx=floor(getx/feld);
  sumly=floor(gety/feld);
  

println("x"+sumlx);
println("y"+sumly);
         point = get(sumlx*feld+1,sumly*feld+1);

pop=1;
fill(rc,gc,bc);
rect(sumlx*feld,sumly*feld+30,feld,feld);

   }
   
} 
 
     if((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=650&&mouseovery<=680)){
 if (mousePressed){ 
  /*     if(scb<=254){
       scb++;
     fill(scb);
    rect(scb,620,255-rcb,25); 
     }
     
     */
    rc=(int)mouseoverx ;  
               
     fill(rc,gc,bc);
    rect(0,740,255,25); 
     fill(255);
     rect(rc,650,1,30);
     
         fill(200);
     rect(260,650,70,30);
       fill(0);
      textSize(25);
    text(rc,260,670);
     }

     }
     
     if((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=680&&mouseovery<=710)){   
 if (mousePressed){ 

    gc=(int)mouseoverx ;  
               
     fill(rc,gc,bc);
    rect(0,740,255,25); 
     fill(255);
     rect(gc,680,1,30); 
       fill(200);
     rect(260,680,70,30);
       fill(0);
      textSize(25);
    text(gc,260,700);

     }

     }
    if((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=710&&mouseovery<=740)){   
 if (mousePressed){ 

    bc=(int)mouseoverx ;  
               
     fill(rc,gc,bc);
    rect(0,740,255,25); 
     fill(255);
     rect(bc,710,1,30); 
   fill(200);
     rect(260,710,70,30);
       fill(0);
      textSize(25);
    text(bc,260,730);

     }

     }
     
             fill(200);
     rect(260,740,200,30);
          fill(0);
      textSize(25);
    text(+rc+" "+gc+" "+bc+" ",260,760);
     
     
     
       if((mouseoverx>=0&&mouseoverx<=70)&&(mouseovery>=0&&mouseovery<=30)){   
 if (mousePressed){ 
PImage bild;
    bild = get(0, 30,600, 600);
       if (bild != null) {
         
          save("bild.png");  
 }
 }
       }
}
  /*  if((mouseoverx>=700&&mouseoverx<=750)&&(mouseovery>=0&&mouseovery<=30)){
    if   (mousePressed && (mouseButton == RIGHT)){
          feld--;
          fill(200);
           rect(0,30,600,600);
        while(num!=600/feld){
          num++;
          fill(255);
 rect(feld*num,30,1,600);
  fill(255);
 rect(0,feld*num+30,600,1);
         }
     num=0;  
     }}
   */

/*
      PImage bild;
        bild = loadImage("bild1.png");
       if (bild != null) {
          image(bild, 0, 0);
         // saveFrame("bild.png");
          
     
    String ggg="eol";
  String fff="eof";
   
    
      String[] lines = loadStrings("list.txt");

println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {


println("tog"+x);
// Tests to see if 'str1' is equal to 'str2'
if (ggg.equals(lines[i]) == true ) {
vox=x-1;
  y++;
  x=0;
println("got"+y);

voy++;
}
if (fff.equals(lines[i]) == true ) {
println("end");//saveFrame("bild1.png");
PImage bild;
        bild = get(2, 0, vox-1, voy);
       if (bild != null) {
         
         // saveFrame("bild.png");


  bild.save("bild1.png");





}
//exit();
}
int byt = int(lines[i]);
fill(byt);
rect(x,y,1,1);
x++;

}
*/
       
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Knuddels_Helper_0_2_1_21_36_02_03_2021" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
