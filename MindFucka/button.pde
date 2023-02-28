class Button {
  color colorOfButton = 0;
  color colorOfHoveredButton = 0;
  color currentColor = 0;
  String text = "";
  PVector leftTop = new PVector(0, 0);
  PVector rightBottom = new PVector(200, 200);
  PVector size = new PVector(0, 0);

  Button( PVector leftTop, PVector size) {
    this.leftTop = leftTop;
    this.size = size;
    this.rightBottom =  new PVector( leftTop.x + size.x, leftTop.y + size.y);
  }
  boolean checkIfMouseIsOverButton() {
    return isMouseOver(leftTop, rightBottom);
  }

  void action(){};
  void display(){};
  void hover(){};
}

class Start extends Button {
  
  Start(PVector _leftTop, PVector _size) {
    super(_leftTop, _size);
    colorOfButton = #FC6647;
    colorOfHoveredButton = #F2DAD5;
    text = "START!";
  }
  void action() {
    print("klikniete");
  }
  void display() {
    fill(currentColor);
    rect(leftTop.x, leftTop.y, size.x, size.y);
    fill(#F1EDF2);
    textAlign(CENTER,CENTER);
    textSize(48);
    text(text, leftTop.x + size.x/2, leftTop.y + size.y/2);
  }
  void hover(){
    if(checkIfMouseIsOverButton()){
        currentColor = colorOfHoveredButton;
    }
  }
}
