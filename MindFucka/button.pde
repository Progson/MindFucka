class Button {
  color colorOfButton = 0;
  color colorOfHoveredButton = 0;
  color currentColor = 0;
  String text = "";
  PVector leftTop = new PVector(0, 0);
  PVector rightBottom = new PVector(200, 200);
  PVector size = new PVector(0, 0);
  boolean draggable = false;


  Button( PVector leftTop, PVector size) {
    this.leftTop = leftTop;
    this.size = size;
    this.rightBottom =  new PVector( leftTop.x + size.x, leftTop.y + size.y);
  }

  void clickAction() {
  };
  void display() {
  };
  void hover() {
  };
  void noHover() {
  };
}

class Start extends Button {

  Start(PVector _leftTop, PVector _size) {
    super(_leftTop, _size);
    colorOfButton = #FC6647;
    currentColor = colorOfButton;
    colorOfHoveredButton = #F2DAD5;
    text = "START!";
  }
  void clickAction() {
    print("klikniete");
  }
  void display() {
    fill(currentColor);
    rect(leftTop.x, leftTop.y, size.x, size.y);
    fill(#F1EDF2);
    textAlign(CENTER, CENTER);
    textSize(48);
    text(text, leftTop.x + size.x/2, leftTop.y + size.y/2);
  }
  void hover() {
    currentColor = colorOfHoveredButton;
  }
  void noHover() {
    currentColor = colorOfButton;
  }
}
class FigureButton extends Button {
  PVector leftTopOrginal = new PVector(0, 0);
  PVector rightBottomOrginal = new PVector(200, 200);
  boolean dragged = false;
  FigureButton(PVector _leftTop, PVector _size) {
    super(_leftTop, _size);
    colorOfButton = #FC6647;
    currentColor = colorOfButton;
    colorOfHoveredButton = #F2DAD5;
    text = "START!";
    leftTopOrginal = leftTop;
    rightBottomOrginal = rightBottom;
  }
  void display() {
    fill(currentColor);
    rect(leftTop.x, leftTop.y, size.x, size.y);
  }
  void hover() {
    currentColor = colorOfHoveredButton;
  }
  void noHover(){
    currentColor = colorOfButton;
  }
  void dragAction() {
    // przepisać to wszystko zrobić dwa typy przyciskow zwykle przyciski i te do przesowania
    // tworzyc na podstawie pozycji srodka i wielkosci
  }
}
