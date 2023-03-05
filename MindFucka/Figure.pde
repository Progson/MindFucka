class Figure {
  PVector position = new PVector(0, 0);
  InstructionManager instructionManager = new InstructionManager(this);
  
  void addTogether(Instruction i) {
    instructionManager.together.add(i);
  }
  
  void addTogether(ArrayList<Instruction> instructions) {
    for (int i = instructions.size() - 1; i >= 0; i--) {
      addTogether(instructions.get(i));
    }
  }
  
  void addGiven(Instruction i) {
    instructionManager.given.add(i);
  }
  
  void addGiven(ArrayList<Instruction> instructions) {
    for (int i = instructions.size() - 1; i >= 0; i--) {
      addGiven(instructions.get(i));
    }
  }
  
  void addStarting(Instruction i) {
    instructionManager.starting.add(i);
  }
  
  void addStarting(ArrayList<Instruction> instructions) {
    for (int i = instructions.size() - 1; i >= 0; i--) {
      addStarting(instructions.get(i));
    }
  }
  
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
  
  void activateNeighbour(PVector position) {
    if (gameBoard.isInsideBoard(position)) {
      Figure neighbour = gameBoard.board[int(position.x)][int(position.y)];
      
      if (neighbour != null) {
        neighbour.active = true;
      }
    }
  }
  
  void activateNeighbours() {
    activateNeighbour(position.copy().add(new PVector(1, 0)));
    activateNeighbour(position.copy().add(new PVector(-1, 0)));
    activateNeighbour(position.copy().add(new PVector(0, 1)));
    activateNeighbour(position.copy().add(new PVector(0, -1)));
  }
  
  
  // Wykonaj polecenie z list
  void tick() {
    instructionManager.tick();
  }
}
