List<int> combinarYOrdenarListas(List<int> lista1, List<int> lista2) {

  final List<int> listaCombinada = <int>[...lista1, ...lista2];
  return listaCombinada..sort((int a, int b) => a.compareTo(b));
}

void main() {

  final List<int> numeros1 = <int>[1, 2, 4];
  final List<int> numeros2 = <int>[1, 3, 4];

  final List<int> resultado = combinarYOrdenarListas(numeros1, numeros2);

  print('Lista combinada y ordenada: $resultado'); 
}
