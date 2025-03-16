
void main() {
  // Criando objetos da classe Camera
  Camera cam1 = Camera(1, "Apple", "Preta", 2000.00);
  Camera cam2 = Camera(2, "Microsoft", "Rosa", 12200);
  Camera cam3 = Camera(3, "Sony", "Branca", 4554.72);

  // Imprimindo detalhes
  cam1.printDetalhes();
  cam2.printDetalhes();
  cam3.printDetalhes();
}



class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;


  set id(int novoId) {
    if (novoId > 0) {
      _id = novoId;
    }
  }

  set marca(String novaMarca) {
    if (novaMarca.isNotEmpty) {
      _marca = novaMarca;
    }
  }

  set cor(String novaCor) {
    if (novaCor.isNotEmpty) {
      _cor = novaCor;
    }
  }

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }

  void printDetalhes() {
    print("ID: $_id\nMarca: $_marca\nCor: $_cor\nPreço: R\$$_preco\n");
  }
}

//teste
