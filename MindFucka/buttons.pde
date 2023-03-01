class Buttons {
  ArrayList <Button> buttons = new ArrayList<Button>();
  Buttons() {
  }
  void setupButtons() {
    Start start = new Start(new PVector(100, 550), new PVector(200, 100));
    this.buttons.add(start);
  }
  boolean checkIfMouseIsOverButton(Button given) {
    return isMouseOver(given.leftTop, given.rightBottom);
  }
  void clicked() { // pokliknieciu myszy
    for (Button i : this.buttons) {
      if (checkIfMouseIsOverButton(i)) {
        i.clickAction();
      }
    }
  }
  void hover() { // po ruszeniu myszy
    for (Button i : this.buttons) {
       if (checkIfMouseIsOverButton(i)) {
        i.hover();
      }
    }
  }
  void dragged() { // pokliknieciu myszy
    for (Button i : this.buttons) {
       if (checkIfMouseIsOverButton(i)) {
        i.dragAction();
      }
    }
  }
  void display() {
    for (Button i : this.buttons) {
      i.display();
    }
  }
}
