
int _f=12000;
PrintWriter output;

float maxX=0;
float maxY=0;
float minX=0xBEEF;
float minY=0xBEEF;
float maxZ=0;
float minZ=0xBEEF;

void setup()
{
  size(300,300);
smooth();
noLoop();
 
output = createWriter( "motion_demo.gcode" );
//output.println("M92 X40.0 Y40.0 Z40.0"); 
output.println("G28"); 


}
void draw()
{


xyzPoint p;
translate(width/2,height/2);
strokeWeight(2);
 

for(int n=0;n<200;n++)
{
  for(int i=0;i<200;i++)
    {
      if(n==0&&i==0) beginShape(); //for drawing the spiral
      
      p=getdata(i);
      
      if(n==0)vertex(p.x,p.y); //for drawing the spiral
      
      output.println("G1 X"+p.x+" Y"+p.y+" Z"+p.z+" F"+_f); 
      
      if(n==0&&i==199) endShape(); //for drawing the spiral
    }  
  
  for(int i=200;i>0;i--)
    {
      p=getdata(i);
      
       output.println("G1 X"+p.x+" Y"+p.y+" Z"+p.z+" F"+_f);  
    }
    
    
}

println("X extents: "+ minX + ","+maxX +" - Y extents: "+ minY + ","+maxY +" - Z extents: "+ minZ + ","+maxZ);


 output.close();
}

xyzPoint getdata(int i)
{
   xyzPoint pp = new xyzPoint();
   pp.x= (i*.5)*sin(i/5.0);
   pp.y = (i*.5)*cos(i/5.0);
   pp.z = i*1.5+50;
   
   //find extends
   if(maxX<pp.x) maxX=pp.x;
   if(maxY<pp.y) maxY=pp.y;
   if(maxZ<pp.z) maxZ=pp.z;
   
   if(minX>pp.x) minX=pp.x;
   if(minY>pp.y) minY=pp.y;
   if(minZ>pp.z) minZ=pp.z;
      
   return pp;
}

class xyzPoint
{
 float x=0;
  float y =0;
 float z = 0;


  
}


