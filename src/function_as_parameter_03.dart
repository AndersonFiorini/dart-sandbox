
main(List<String> args) {
    FuncoesComoParametro3().rodar();

}



class FuncoesComoParametro3 {
  void _executarPor(int qtd, Function(String) fn, String valor) {
    for (var i = 0; i < qtd; i++) {
      fn('${i + 1} $valor');
    }
  }

  void rodar() {
    _executarPor(10, print, 'Muito Legal');
  }
}