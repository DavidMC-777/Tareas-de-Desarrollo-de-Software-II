// Ejercicio Propuesto con List
void main() {
  // Ingresamos los ejemplos
  List<int> numeros1 = [1, 2, 4];
  List<int> numeros2 = [1, 3, 4];
  
  // Unimos los valores
  numeros1.addAll(numeros2);
  
  // Ordenamos los valores
  numeros1.sort();
  print(numeros1);
}
