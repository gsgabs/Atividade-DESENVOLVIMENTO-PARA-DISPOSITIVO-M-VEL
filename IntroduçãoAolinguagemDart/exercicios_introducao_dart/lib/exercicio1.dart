//Exercicio 1

void main() {
  Laptop lap1 = new Laptop("PC-01", 8, 001);
  Laptop lap2 = new Laptop("PC-02", 12, 002);
  Laptop lap3 = new Laptop("PC-03", 16, 003);
  
  lap1.printstatus();
  lap2.printstatus();
  lap3.printstatus();
  
}

class Laptop {
    String _nome;
    var _ram;
    int _id;
    
    Laptop(this._nome, this._ram, this._id);
  
    void printstatus(){
      print("Name: $_nome\nRam: $_ram gb\nId: 00$_id");
    }
  
  }
