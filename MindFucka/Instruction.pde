// Interfejs do poleceń wykonywanych przez figury
// Każde polecenie musi implementować ten interfejs
interface Instruction {
  void call(/*mapa, */ Figure figure);
}

// Menedżer wybierający z której listy ma się wykonać polecenie
class InstructionManager {
  Figure figure;
  
  // Instrukcje w tej liście są wykonywane na samym początku i wszystkie na raz
  ArrayList<Instruction> together = new ArrayList<Instruction>();
  // Instrukcje dane przez inne figury
  ArrayList<Instruction> given = new ArrayList<Instruction>();
  // Instrukcje dane przy starcie symulacji
  ArrayList<Instruction> starting = new ArrayList<Instruction>();
  
  // Nazwa być może do zmiany
  // Wykonaj polecenie/polecenia z listy
  void tick() {
    // Jeżeli w `together` są jakieś polecenia, to wykonaj wszystkie
    if (together.size() != 0) {
      for (Instruction i : together) {
        i.call(figure);
      }
      
      together.clear();
    }
    // Jeżeli w `together` nie było poleceń, ale w `given` są, wykonaj jedno
    else if (given.size() != 0) {
      Instruction i = given.get(0);
      i.call(figure);
      
      given.remove(0);
    }
    // Jeżeli w poprzednich listach nie było poleceń, to wykonaj polecenie z `starting`
    else if (starting.size() != 0) {
      Instruction i = starting.get(0);
      i.call(figure);
      
      starting.remove(0);
    }
  }
}




class UpInstruction implements Instruction {
  void call(Figure figure) {
    figure.moveUp();
  }
}

class DownInstruction implements Instruction {
  void call(Figure figure) {
    figure.moveDown();
  }
}

class LeftInstruction implements Instruction {
  void call(Figure figure) {
    figure.moveLeft();
  }
}

class RightInstruction implements Instruction {
  void call(Figure figure) {
    figure.moveRight();
  }
}
