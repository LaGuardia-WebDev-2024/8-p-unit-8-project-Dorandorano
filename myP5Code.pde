




//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    
    imageMode(CENTER);
    
    
}


var wave = 160;
var wave2 = 259;
var blink = 25;
var wave3 = 274;
let bubbleX = 200;
let bubbleY = 260; 
var bubbleW = 10;
var bubbleH = 10;
 



//🟢draw Function - will run on repeat
draw = function(){
background(255,255,255,0);

let bubbleX = 2;
let bubbleY = 260;
    
drawChiikawa();
drawBubble();
drawWater();
drawBubble();



};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

var drawChiikawa = function(){

            fill(255,255,255)
            noStroke();
            ellipse(200, 190, 200, 150);
            ellipse(150, 121, 30, 50);
            ellipse(239, 121, 30, 50);
  
            //eyes
            noStroke();
            fill(0,0,0);
            ellipse(170, 200, 25, 27);
            ellipse(230, 200, 25, 27);
            fill(255,255,255);
            ellipse(170, 197, 16, 9);
            ellipse(230, 197, 16, 9);
            ellipse(170, 210, 10, 4);
            ellipse(230, 210, 10, 4);


            //blink
            noStroke();
            fill(255,255,255);
            ellipse(230, 190, 80, blink);
            ellipse(230, 214, 25, blink);

            //blush
            noStroke();
            fill(237, 197, 194)
            ellipse(150, 220, 40, 20)
            ellipse(260, 220, 40, 20)

            stroke( 0, 0, 0)
            noFill();
            strokeWeight(3);
            line(144, 215,136, 226);
            line(153, 215,145, 226);
            line(161, 215,153, 226);
            line(254, 215,246, 226);
            line(263, 215,255, 226);
            line(271, 215,263, 226);


            //eyebrows
            stroke( 0, 0, 0);
            noFill();
            strokeWeight(6);
            line(160, 176, 172, 175);
            line(226, 175, 239, 176);
            arc(190, 220, 20, 20, 0, HALF_PI);
            arc(211, 220, 20, 20, radians(90),radians(180) );
            line(197, 240, 204, 240);
            
            //body
            noStroke();
            fill(255,255,255);
            quad(147, 250, 257, 250, 237, 293 ,168, 293);
            ellipse(203,280,82,53);

            //limbs
            stroke(255,255,255);
            noFill();
            strokeWeight(18);
            line(wave, wave2, 170, wave3);
            line(245, 260, 260, 274);
            line(194,293,195,309);
            line(216,293,215,309);


            wave = wave -1
            wave2 = wave2 +1
            blink = blink +2

            if(wave < 102){
            wave = 130 ;
            }

            if(wave2 > 259){
            wave2 = 230 ;
            }
            if(blink > 50){
            blink = 1;
            }  
            

};

var drawBubble = function(){
  fill(255, 255, 255, 20);
  ellipse(bubbleX,bubbleY,bubbleW,bubbleH);
  
  bubbleY = bubbleY - 1
  bubbleX= bubbleX +1
  
  if(bubbleY > 100 ){
            bubbleY = 97 ;
            }
            
  
  
  
};

var drawWater = function(){
fill(0,100,500, 90);
ellipse(250,40,4000,4000);



};





