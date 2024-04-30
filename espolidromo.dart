bool esPalindromo(String cadena) {
  // Eliminar espacios en blanco y convertir todo a minúsculas
  String cadenaNormalizada =
      cadena.replaceAll(RegExp(r'\s+'), '').toLowerCase();

  // Obtener la longitud de la cadena
  int longitud = cadenaNormalizada.length;

  // Verificar si la cadena es un palíndromo
  for (int i = 0; i < longitud ~/ 2; i++) {
    if (cadenaNormalizada[i] != cadenaNormalizada[longitud - i - 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  String ejemplo1 = "anita lava la tina";
  String ejemplo2 = "oso";
  String ejemplo3 = "reconocer";
  String ejemplo4 = "hola mundo";

  print('"$ejemplo1" es un palíndromo? ${esPalindromo(ejemplo1)}');
  print('"$ejemplo2" es un palíndromo? ${esPalindromo(ejemplo2)}');
  print('"$ejemplo3" es un palíndromo? ${esPalindromo(ejemplo3)}');
  print('"$ejemplo4" es un palíndromo? ${esPalindromo(ejemplo4)}');
}
