class Buttons {
  ArrayList <Button> buttons = new ArrayList<Button>();
  Buttons() {
  }
  void setupButtons() {
    Start start = new Start(new PVector(100, 550), new PVector(200, 100));
    this.buttons.add(start);
  }

  void clicked() { // pokliknieciu myszy
    for (Button i : this.buttons) {
      if (i.checkIfMouseIsOverButton()) {
        i.action();
      }
    }
  }
  void hover() { // po ruszeniu myszy
    for (Button i : this.buttons) {
        i.hover();
    }
  }
  void dragged() { // pokliknieciu myszy
    for (Button i : this.buttons) {
      if (i.checkIfMouseIsOverButton()) {
        i.action();
      }
    }
  }


  void display() {
    for (Button i : this.buttons) {
        i.display();
    }
  }
}
