class Buttons {
  ArrayList <Button> buttons = new ArrayList<Button>();
  Buttons() {
  }
  void setupButtons() {
    Button start = new Button(new PVector(100, 550), new PVector(200, 100), "START", #FA5A3A);
    this.buttons.add(start);
  }

  void clicked() { // pokliknieciu myszy
    for (Button i : this.buttons) {
      if (checkIfMouseIsOverButton(i)) {
        i.action();
      }
    }
  }
  void dragged() { // pokliknieciu myszy
    for (Button i : this.buttons) {
      if (checkIfMouseIsOverButton(i)) {
        i.action();
      }
    }
  }

  boolean checkIfMouseIsOverButton(Button givenButton) {
    return isMouseOver(givenButton.leftTop, givenButton.rightBottom);
  }

  void display() {
    for (Button i : this.buttons) {
        i.display();
    }
  }
}
class Button {
  PVector leftTop = new PVector(0, 0);
  PVector rightBottom = new PVector(200, 200);
  PVector size = new PVector(0, 0);
  String text = "text";
  color colorOfButton = 0;
  Button( PVector leftTop, PVector size, String text, color colorOfButton) {
    this.leftTop = leftTop;
    this.size = size;
    this.rightBottom =  new PVector( leftTop.x + size.x, leftTop.y + size.y);
    this.text = text;
    this.colorOfButton = colorOfButton;
  }
  void action() {
    print("klikniete");
  }
  void display(){
      fill(colorOfButton);
      rect(leftTop.x, leftTop.y,size.x,size.y);
      fill(200);
      textAlign(CENTER);
      textSize(48);
      text(text,leftTop.x + size.x/2,leftTop.y + size.y/2);
  }
}
