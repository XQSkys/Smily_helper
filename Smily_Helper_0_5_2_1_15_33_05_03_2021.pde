
  int ex=0;
          int ey=0;
void setup() { 
  background(255);
  size(1000,800);
  stroke(0);
fill(255);
  rect(0,0,1000,30);
      fill(0);
      textSize(30);
    text("Datei",0,25);
   fill(0);
      textSize(30);
    text("Frame",90,25);
      fill(0);
      textSize(30);
    text("Pixel",300,25);
    
     fill(0);
      textSize(30);
    text("+/-",700,25);
    noStroke();
    fill(255);
  rect(600,600,300,200);
  
     stroke(0);
    fill(255);
  rect(600,30,200,200);
     fill(255);
  rect(600,230,200,200);
       fill(255);
  rect(800,230,200,200);
       fill(255);
  rect(800,30,200,200);
     fill(255);
  rect(800,600,200,200);
  
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

int num=0;
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
int qc=0;


void draw() {
     PImage bild;
      PImage bildr;
       PImage bildg;
        PImage bildb;
         PImage bildbw;
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
rect(sumlx*feld,sumly*feld+30,feld,feld);

fill(rc,gc,bc);
rect(sumlx+800,sumly+600,1,1);


fill(rc,0,0);
rect(sumlx+600,sumly+30,1,1);
fill(0,gc,0);
rect(sumlx+800,sumly+30,1,1);
fill(0,0,bc);
rect(sumlx+600,sumly+230,1,1);
qc=(rc+gc+bc)/3;
fill(qc);
rect(sumlx+800,sumly+230,1,1);

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
         sc=floor((rc+gc+bc)/3);  
              fill(sc);
              rect(0,770,255,25); 
              
                fill(200);
              rect(260,770,70,30); 
              fill(0);
      textSize(25);
    text(sc,260,790);
     
     
       if((mouseoverx>=0&&mouseoverx<=70)&&(mouseovery>=0&&mouseovery<=30)){   

    if   (mousePressed && (mouseButton == LEFT)){
    fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
      bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 600, 600);
          image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bild.width;
        ey=bild.height;
         num=ex;
         dom=0;}
         
         
             fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
      bildr = loadImage("bildr.png");
       if (bildr != null) {
          image(bildr, 600, 30);
        //  image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bildr.width;
        ey=bildr.height;
         num=ex;
         dom=0;}
       
       
             fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
      bildg = loadImage("bildg.png");
       if (bildg != null) {
          image(bildr, 600, 30);
        //  image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bildg.width;
        ey=bildg.height;
         num=ex;
         dom=0;}
   
    
             fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
      bildb = loadImage("bildb.png");
       if (bildb != null) {
          image(bildb, 600, 30);
        //  image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bildb.width;
        ey=bildb.height;
         num=ex;
         dom=0;}
 
    
             fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
      bildbw = loadImage("bildbw.png");
       if (bildg != null) {
          image(bildbw, 600, 30);
        //  image(bild,0,30, 600, 600);
         // saveFrame("bild.png");
          
        ex=bildbw.width;
        ey=bildbw.height;
         num=ex;
         dom=0;
 
 }
    }       
         
         
         
       if (mousePressed && (mouseButton == RIGHT)){
      
      fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
 
      delay(30);
         
     bild= get(800, 600,num1+1, num1+1);
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
     bild.save("bild.png"); 

   
 }
  


 
   fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
 
      delay(30);
         
     bildr= get(600, 30,num1+1, num1+1);
       if (bildr != null) {
         
         // saveFrame("bild.png");

    
 if(iv>=0&&iv<=9)
  bildr.save("rSavesMovie/rMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildr.save("rSavesMovie/rMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildr.save("rSavesMovie/rMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildr.save("rSavesMovie/rMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildr.save("rSavesMovie/rMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildr.save("rSavesMovie/rMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildr.save("rSavesMovie/rMovie"+iv+".png");
     
   
  bildr.save("bildr.png"); 
 
   
 }
   fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
 
      delay(30);
         
     bildg= get(800, 30,num1+1, num1+1);
       if (bildg != null) {
         
         // saveFrame("bild.png");

    
 if(iv>=0&&iv<=9)
  bildg.save("gSavesMovie/gMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildg.save("gSavesMovie/gMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildg.save("gSavesMovie/gMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildg.save("gSavesMovie/gMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildg.save("gSavesMovie/gMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildg.save("gSavesMovie/gMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildg.save("gSavesMovie/gMovie"+iv+".png");

   bildg.save("bildg.png");  

     
   }
   fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
 
      delay(30);
         
     bildb= get(600, 230,num1+1, num1+1);
       if (bildb != null) {
         
         // saveFrame("bild.png");

    
 if(iv>=0&&iv<=9)
  bildb.save("bSavesMovie/bMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildb.save("bSavesMovie/bMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildb.save("bSavesMovie/bMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildb.save("bSavesMovie/bMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildb.save("bSavesMovie/bMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildb.save("bSavesMovie/bMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildb.save("bSavesMovie/bMovie"+iv+".png");

  bildb.save("bildb.png");

     }
  
    fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);
 
      delay(30);
         
     bildbw= get(800, 230,num1+1, num1+1);
       if (bildbw != null) {
         
         // saveFrame("bild.png");

    
 if(iv>=0&&iv<=9)
  bildbw.save("bwSavesMovie/bwMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildbw.save("bwSavesMovie/bwMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildbw.save("bwSavesMovie/bwMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildbw.save("bwSavesMovie/bwMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildbw.save("bwSavesMovie/bwMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildbw.save("bwSavesMovie/bwMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildbw.save("bwSavesMovie/bwMovie"+iv+".png");
 
   bildbw.save("bildbw.png"); }
  
iv++;

 }
       }
       
       
     if((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30)){   

    if   (mousePressed && (mouseButton == LEFT)){iv++;   fill(255);rect(200,0,90,30);      fill(0);
      textSize(30);
    text(iv,200,25);}
  if   (mousePressed && (mouseButton == RIGHT)){iv--;if(iv<0)iv=0; fill(255);rect(200,0,90,30);  fill(0);
      textSize(30);
    text(iv,200,25);}
      bild = loadImage("SavesMovie/Movie000000"+iv+".png");
        
       if(iv>=0&&iv<=9)
  bild = loadImage("SavesMovie/Movie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bild = loadImage("SavesMovie/Movie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bild = loadImage("SavesMovie/Movie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bild = loadImage("SavesMovie/Movie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bild = loadImage("SavesMovie/Movie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bild = loadImage("SavesMovie/Movie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bild = loadImage("SavesMovie/Movie"+iv+".png");
      
      
      
       if (bild != null) {
          image(bild, 600, 800);
          image(bild,0,30, 600, 800);
         // saveFrame("bild.png");
          
        ex=bild.width;
        ey=bild.height;
         num=ex;
         dom=0;}else iv--;
       
     
    bildr = loadImage("rSavesMovie/rMovie000000"+iv+".png");
        
       if(iv>=0&&iv<=9)
  bildr = loadImage("rSavesMovie/rMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildr = loadImage("rSavesMovie/rMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildr = loadImage("rSavesMovie/rMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildr = loadImage("rSavesMovie/rMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildr = loadImage("rSavesMovie/rMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildr = loadImage("rSavesMovie/rMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildr = loadImage("rSavesMovie/rMovie"+iv+".png");
      
      
      
       if (bildr != null) {
          image(bildr, 600, 30);
          //image(bild,0,30, 600, 800);
         // saveFrame("bild.png");
          
        ex=bildr.width;
        ey=bildr.height;
         num=ex;
         dom=0;}else iv--;
 
 
 
   bildg = loadImage("gSavesMovie/gMovie000000"+iv+".png");
        
       if(iv>=0&&iv<=9)
  bildg = loadImage("gSavesMovie/gMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildg = loadImage("gSavesMovie/gMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildg = loadImage("gSavesMovie/gMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildg = loadImage("gSavesMovie/gMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildg = loadImage("gSavesMovie/gMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildg = loadImage("gSavesMovie/gMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildg = loadImage("gSavesMovie/gMovie"+iv+".png");
      
      
      
       if (bildg != null) {
          image(bildg, 800, 30);
          //image(bild,0,30, 600, 800);
         // saveFrame("bild.png");
          
        ex=bildg.width;
        ey=bildg.height;
         num=ex;
         dom=0;}else iv--;
 
   bildb = loadImage("bSavesMovie/bMovie000000"+iv+".png");
        
       if(iv>=0&&iv<=9)
  bildb = loadImage("bSavesMovie/bMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildb = loadImage("bSavesMovie/bMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildb = loadImage("bSavesMovie/bMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildb = loadImage("bSavesMovie/bMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildb = loadImage("bSavesMovie/bMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildb = loadImage("bSavesMovie/bMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildb = loadImage("bSavesMovie/bMovie"+iv+".png");
      
      
      
       if (bildb != null) {
          image(bildb, 600, 230);
          //image(bild,0,30, 600, 800);
         // saveFrame("bild.png");
          
        ex=bildb.width;
        ey=bildb.height;
         num=ex;
         dom=0;}else iv--;
 
 
   bildbw = loadImage("bwSavesMovie/bwMovie000000"+iv+".png");
        
       if(iv>=0&&iv<=9)
  bildbw = loadImage("bwSavesMovie/bwMovie000000"+iv+".png");
        if(iv>=10&&iv<=99)
  bildbw = loadImage("bwSavesMovie/bwMovie00000"+iv+".png");
        if(iv>=100&&iv<=999)
  bildbw = loadImage("bwSavesMovie/bwMovie0000"+iv+".png");
        if(iv>=1000&&iv<=9999)
  bildbw = loadImage("bwSavesMovie/bwMovie000"+iv+".png");
        if(iv>=10000&&iv<=99999)
  bildbw = loadImage("bwSavesMovie/bwMovie"+iv+".png");
        if(iv>=100000&&iv<=999999)
  bildbw = loadImage("bwSavesMovie/bwMovie0"+iv+".png");
    if(iv>=1000000&&iv<=9999999)
 bildbw = loadImage("bwSavesMovie/bwMovie"+iv+".png");
      
      
      
       if (bildbw != null) {
          image(bildbw, 800, 230);
          //image(bild,0,30, 600, 800);
         // saveFrame("bild.png");
          
        ex=bildbw.width;
        ey=bildbw.height;
         num=ex;
         dom=0;}else iv--;
 
 
 
 
 
 
 
 
 
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
       
