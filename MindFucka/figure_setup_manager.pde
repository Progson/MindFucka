enum Direction {
  up, down, left, right;
}

class FigureSetupManager{
  void addArrow(Direction dir, int energy, PVector pos, boolean active) {
    Figure new_figure = new Figure();
    
    for (int i = 0; i < energy; i++) {
      if (dir == Direction.right)
        new_figure.addStarting(new RightInstruction());
      else if (dir == Direction.left)
        new_figure.addStarting(new LeftInstruction());
      else if (dir == Direction.up)
        new_figure.addStarting(new UpInstruction());
      else
        new_figure.addStarting(new DownInstruction());
    }
    
    new_figure.position = pos.copy();
    
    new_figure.active = active;
    
    gameBoard.addFigure(new_figure);
  }
}
