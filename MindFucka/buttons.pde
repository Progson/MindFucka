class Buttons {
  ArrayList <Button> buttons = new ArrayList<Button>();
  Buttons() {
  }
  void setupButtons() {
    Start start = new Start(new PVector(100, 550), new PVector(200, 100));
    FigureButton arrow = new FigureButton(new PVector(20, 100), new PVector(40, 40));
    this.buttons.add(start);
    this.buttons.add(arrow);
  }
  boolean checkIfMouseIsOverButton(Button given) {
    return isMouseOver(given.leftTop, given.rightBottom);
  }
  void clicked() { // po kliknieciu myszy
    for (Button i : buttons) {
      if (checkIfMouseIsOverButton(i)) {
        i.clickAction();
      }
    }
  }
  void hover() { // po ruszeniu myszy
    for (Button i : buttons) {
      if (checkIfMouseIsOverButton(i)) {
        i.hover();
      } else {
        i.noHover();
      }
    }
  }
  void display() {
    for (Button i : buttons) {
      i.display();
    }
  }
}
