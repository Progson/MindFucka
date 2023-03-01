//mozna pomyslec nad zrobieniem obiektu typu set instrukcji i potem w instrukt menagrze zrobić funkcje typu dodawanie setu kasowanie setu
//i wtedy insturktionManager nie miałby w sobie array listów tylko sety instrukcji.
//dzięki temu moglibyśmy zrobić sety instrukcji do każdej figury i wygodnie by sie je potem tworzyło na zasadzie dodaj set odpowiadający typowi figury, a jakbysmy
//chcieli zrobic figure co jest kamieniem a zachowuje sie jakos inaczej to moglibysmy mu ustawiac customowe sety. wydaje mi sie elegancki pomysl
//btw jest 02:41 pozdrawiam.

// Interfejs do poleceń wykonywanych przez figury
// Każde polecenie musi implementować ten interfejs
interface Instruction {
  void call(/*mapa, */ Figure figure);
}

// Menedżer wybierający z której listy ma się wykonać polecenie
class InstructionManager {
  Figure figure;

  InstructionManager(Figure _figure) {
    figure = _figure;
  }

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
    else if (figure.active) {
      // Jeżeli w `together` nie było poleceń, ale w `given` są, wykonaj jedno
      if (given.size() != 0) {
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
}



class MoveByVectorInstruction implements Instruction {
  PVector move;
  
  MoveByVectorInstruction(PVector _move) {
    move = _move;
  }
  
  void call(Figure figure) {
    figure.moveByVector(move);
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
