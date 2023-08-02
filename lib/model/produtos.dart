class Produtos {
  //Atributos
  int id;
  String nome;
  String fornecedor;
  double preco;

  //Construtor
  Produtos(this.id, this.nome, this.fornecedor, this.preco);

  //Método que converte um MODEL para MAP
  //Fluxo de Ida para o Banco
  Map<String, dynamic> toMap() {
    var dados = <String, dynamic>{};

    dados['id'] = id;
    dados['nome'] = nome;
    dados['fornecedor'] = fornecedor;
    dados['preco'] = preco;

    return dados;
  }

  //Método que converte um MAP para MODEL
  deMapParaModel(Map<String, dynamic> dados) {
    id = dados['id'];
    nome = dados['nome'];
    fornecedor = dados['fornecedor'];
    preco = dados['preco'];
  }
}
