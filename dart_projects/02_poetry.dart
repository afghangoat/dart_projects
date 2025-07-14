import 'dart:core';

//Cont-at: Enumeration topx https://www.tutorialspoint.com/dart_programming/dart_programming_enumeration.htm

//My not-so-sophisticated poetry generator
class PoetryGenerator {
  var first = [
    "winds",
    "monkeys",
    "giraffes",
    "butterflies",
    "house",
    "myself",
    "bananas",
    "tree",
  ];
  var seconds = [
    "to",
    "at",
    "from",
    "over",
    "there",
    "with",
    "alas",
    "where",
    "flies",
    "on",
    "in",
    "inside",
    "outside",
  ];
  int seed=0;

  PoetryGenerator(int _seed) {
    seed=_seed;
  }

  String generate(int len) {
    int first_len = first.length;
    int second_len = seconds.length;
    int i1 = 0;
    int i2 = 0;
    int end_counter = 0;

    String data = "";
    for (int i = 0; i < len; i++) {
      if (i % 2 == 0) {
        data += first[(i1+seed)%first_len];
        i1++;
        if (i1 == first_len) {
          i1 = 0;
        }
      } else {
        data += seconds[(i2+seed*2)%second_len];
        i2++;
        if (i2 == first_len) {
          i2 = 0;
        }
      }
      if (i % 4 == 3) {
        switch (end_counter % 5) {
          case 0:
            data += ",";
            break;
          case 1:
            data += ",";
            break;
          case 2:
            data += "?";
            break;
          case 3:
            data += "!";
            break;
          case 4:
            data += ".\n";
            break;
        }
        end_counter++;
        data += "\n";
      } else {
        data += " ";
      }
    }
    return data;
  }

  void printPoetry(int len) {
    print(generate(len));
  }
}

void main() {
  PoetryGenerator c = new PoetryGenerator(10);
  c.printPoetry(40);
}
