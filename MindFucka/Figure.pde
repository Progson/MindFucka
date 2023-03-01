class Figure {
  
  PVector position = new PVector(0, 0);
  InstructionManager instructionManager = new InstructionManager(this);
  
  // Czy figura wykonuje polecenia - jest aktywna
  boolean active = false;
  
  // Ruch
  void moveByVector(PVector vec) {
    PVector changed_position = position.copy().add(vec);
    
    // Kolizje
    // Jeżeli nie czujesz się na siłach - NAWET NIE PRÓBUJ TEGO NAPISAĆ
    // Licznik prób: 1
    /*
    ArrayList<Figure> collided = gameBoard.getFiguresInPosition(changed_position);
    
    for (Figure f : collided) {
      f.instructionManager.together.add(new MoveByVectorInstruction(vec));
    }
    */
    
    gameBoard.board[int(position.x)][int(position.y)] = null;
    position = changed_position;
    gameBoard.board[int(position.x)][int(position.y)] = this;
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
  
  
  // Wykonaj polecenie z list
  void tick() {
    instructionManager.tick();
  }
}
