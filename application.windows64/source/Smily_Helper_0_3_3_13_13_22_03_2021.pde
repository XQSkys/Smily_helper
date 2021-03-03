
  int ex=0;
          int ey=0;
void setup() { 
  background(255);
  size(800, 800);
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
    fill(255);
  rect(600,600,200,200);
  
    }
  


float    mouseovery=0; 
float mouseoverx=0;
color seeCountC=0;

color seeN=0;
color seeC=0;
int x=2;
int y=0;
int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
color  seeX=0; 
color tag=color(0);
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
color point=color(0);
int rc=0;
int gc=0;
int bc=0;
int rcb=0;
int gcb=0;
int bcb=0;
int scb=0;
int num1=0;
int iv=0;
int sc=0;



void draw() {
     PImage bild;
  noStroke();
       if(scb<=254){
       scb++;
     fill(scb);
    rect(scb,770,255-scb,25);
    sc=128;
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
sumly=0; num1=num;}
       if (mousePressed && (mouseButton == RIGHT)){
      
      num--;dom=1;  sumlx=0;if (num<2)num=1;
sumly=0;num1=num;} 
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
rect(sumlx*feld,sumly*feld+30,feld,feld);fill(rc,gc,bc);
rect(sumlx+600,sumly+600,1,1);



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
   
    fill(200);
    rect(260,650,70,30); 
      
    fill(255);
    rect(0,646,255,4);
      
  
    noStroke();
    fill(0);
    rect(rc,646,1,4);
      
  
    noStroke();
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
   
    fill(200);
    rect(260,680,70,30); 
      
 fill(255);
    rect(0,676,255,4);
      
  
    noStroke();
    fill(0);
    rect(gc,676,1,4);
      
  
    noStroke();
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
   
      fill(200);
    rect(260,710,70,30); 
      
 fill(255);
    rect(0,706,255,4);
      
  
    noStroke();
    fill(0);
    rect(bc,706,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(bc,260,730);

     }

     }
     
     
     
     
     
     
     
     
      if((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=650&&mouseovery<=680)){
     if   (mousePressed && (mouseButton == LEFT)){
     rc++;}
       if (mousePressed && (mouseButton == RIGHT)){
      
      rc--;} 
               
          fill(rc,gc,bc);
    rect(0,740,255,25); 
   
    fill(200);
    rect(260,650,70,30); 
      
    fill(255);
    rect(0,646,255,4);
      
  
    noStroke();
    fill(0);
    rect(rc,646,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(rc,260,670);
     }

     
     
     if((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=680&&mouseovery<=710)){   
  if   (mousePressed && (mouseButton == LEFT)){
     gc++;}
       if (mousePressed && (mouseButton == RIGHT)){
      
      gc--;}            
        fill(rc,gc,bc);
    rect(0,740,255,25); 
   
    fill(200);
    rect(260,680,70,30); 
      
 fill(255);
    rect(0,676,255,4);
      
  
    noStroke();
    fill(0);
    rect(gc,676,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(gc,260,700);

     }

     
    if((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=710&&mouseovery<=740)){   
  if   (mousePressed && (mouseButton == LEFT)){
     bc++;}
       if (mousePressed && (mouseButton == RIGHT)){
      
      bc--;}  
           fill(rc,gc,bc);
    rect(0,740,255,25); 
   
     fill(200);
    rect(260,710,70,30); 
      
 fill(255);
    rect(0,706,255,4);
      
  
    noStroke();
    fill(0);
    rect(bc,706,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(bc,260,730);

     }
   if((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=770&&mouseovery<=800)){   
  if   (mousePressed && (mouseButton == LEFT)){
     rc++;gc++;bc++;if(rc>255)rc=255;if(gc>255)gc=255;if(bc>255)bc=255;}
       if (mousePressed && (mouseButton == RIGHT)){
      
      rc--;gc--;bc--; if(rc<1)rc=0;if(gc<1)gc=0;if(bc<1)bc=0;}  
         
    
    
             fill(rc,gc,bc);
    rect(0,740,255,25); 
   
     fill(200);
    rect(260,710,70,30); 
        
 fill(255);
    rect(0,706,255,4);
      
  
    noStroke();
    fill(0);
    rect(bc,706,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(bc,260,730);
       fill(200);
    rect(260,680,70,30); 
      
 fill(255);
    rect(0,676,255,4);
      
  
    noStroke();
    fill(0);
    rect(gc,676,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(gc,260,700);
    
        fill(200);
    rect(260,650,70,30); 
      
    fill(255);
    rect(0,646,255,4);
      
  
    noStroke();
    fill(0);
    rect(rc,646,1,4);
      
  
    noStroke();
     fill(0);
      textSize(25);
    text(rc,260,670);
    
    
     fill(0);
      textSize(25);
    text(sc,260,760);
    
    
 }
  
     
     
     
     
     
             fill(200);
     rect(260,740,200,30);
          fill(0);
      textSize(25);
    text(+rc+" "+gc+" "+bc+" ",260,760);
         sc=(rc+gc+bc)/3;  
              fill(sc);
              rect(0,770,255,25); 
              
                fill(200);
              rect(260,770,70,30); 
              fill(0);
      textSize(25);
    text(sc,260,790);
     
     
       if((mouseoverx>=0&&mouseoverx<=70)&&(mouseovery>=0&&mouseovery<=30)){   

    if   (mousePressed && (mouseButton == LEFT)){
   
      bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 600, 600);
          image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bild.width;
         ey=bild.height;
         num=ex;
         dom=0;}}
       if (mousePressed && (mouseButton == RIGHT)){
      
     
 
      delay(30);
         
     bild= get(600, 600,num1+1, num1+1);
       if (bild != null) {
         
         // saveFrame("bild.png");

    
 if(iv>=0&&iv<=9)
  bild.save("SavesMovie/Movie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bild.save("SavesMovie/Movie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bild.save("SavesMovie/Movie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bild.save("SavesMovie/Movie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bild.save("SavesMovie/Movie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bild.save("SavesMovie/Movie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bild.save("SavesMovie/Movie"+iv+".png");
  
  
  
iv++;
  bild.save("bild.png"); 
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
       
