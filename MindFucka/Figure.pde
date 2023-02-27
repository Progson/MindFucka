class Figure {
  PVector position;
  
  InstructionManager instructionManager = new InstructionManager();
  
  
  // Moving
  void moveByVector(PVector vec) {
    position.add(vec);
  }
  
  void moveUp() {
    moveByVector(new PVector(0, 1));
  }
  
  void moveDown() {
    moveByVector(new PVector(0, -1));
  }
  
  void moveRight() {
    moveByVector(new PVector(1, 0));
  }
  
  void moveLeft() {
    moveByVector(new PVector(-1, 0));
  }
}
