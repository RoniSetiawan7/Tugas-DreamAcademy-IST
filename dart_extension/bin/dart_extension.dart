void main(List<String> arguments) {
  print('4*2'.tambah());
  print('4/2'.tambah());
  print('4+2'.tambah());
  print('4-2'.tambah());
}

extension Aritmethic on String {
  num tambah() {
    var string = split('');
    var num1 = int.parse(string[0]);
    var num2 = int.parse(string[2]);
    var operator = string[1];
    switch (operator) {
      case '*':
        return num1 * num2;
      case '/':
        return num1 / num2;
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
    }
    return 0;
  }
}

// extension Aritmethic on String {
//   num tambah() {
//     var list = split('');
//     switch (list[1]) {
//       case '*':
//         return int.parse(list[0]) * int.parse(list[2]);
//       case '/':
//         return int.parse(list[0]) / int.parse(list[2]);
//       case '+':
//         return int.parse(list[0]) + int.parse(list[2]);
//       case '-':
//         return int.parse(list[0]) - int.parse(list[2]);
//     }
//     return 0;
//   }
// }