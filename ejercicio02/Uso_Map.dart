List<int> intersect(List<int> nums1, List<int> nums2) {

  final Map<int, int> conteo = <int, int>{};
  final List<int> resultado = <int>[];

  for (final int num in nums1) {
    conteo.putIfAbsent(num, () => 0);
    conteo.update(num, (int valorActual) => valorActual + 1);
  }

  for (final int num in nums2) {
    if (conteo.containsKey(num) && conteo[num]! > 0) {
      resultado.add(num); 
      conteo.update(num, (int valorActual) => valorActual - 1);
    }
  }

  return resultado;
}

void main() {
  final List<int> ej1Nums1 = <int>[1, 2, 2, 1];
  final List<int> ej1Nums2 = <int>[2, 2];
  
  final List<int> salidaEj1 = intersect(ej1Nums1, ej1Nums2);
  print('Salida Ejemplo 1: $salidaEj1'); 

  final List<int> ej2Nums1 = <int>[4, 9, 5];
  final List<int> ej2Nums2 = <int>[9, 4, 9, 8, 4];
  
  final List<int> salidaEj2 = intersect(ej2Nums1, ej2Nums2);
  print('Salida Ejemplo 2: $salidaEj2'); 
}
