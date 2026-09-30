int contarFrutasSinColocar(List<int> frutas, List<int> cestas) {
  final Set<int> cestasOcupadas = <int>{};
  
  final Set<int> todasLasCestas = List<int>.generate(cestas.length, (int i) => i).toSet();

  int frutasSinColocar = 0;

  for (final int cantidadFruta in frutas) {
    bool colocada = false;

    final Set<int> cestasLibres = todasLasCestas.difference(cestasOcupadas);

    for (int j = 0; j < cestas.length; j++) {
      if (cestasLibres.contains(j) && cestas[j] >= cantidadFruta) {
        cestasOcupadas.add(j); 
        colocada = true;
        break;
      }
    }

    if (!colocada) {
      frutasSinColocar++;
    }
  }
  return frutasSinColocar;
}

void main() {

  final List<int> frutasEj1 = <int>[4, 2, 5];
  final List<int> cestasEj1 = <int>[3, 5, 4];
  final int resultado1 = contarFrutasSinColocar(frutasEj1, cestasEj1);
  print('Resultado Ejemplo 1 (Frutas sin colocar): $resultado1\n');

  final List<int> frutasEj2 = <int>[3, 6, 1];
  final List<int> cestasEj2 = <int>[6, 4, 7];
  final int resultado2 = contarFrutasSinColocar(frutasEj2, cestasEj2);
  print('Resultado Ejemplo 2 (Frutas sin colocar): $resultado2');
}
