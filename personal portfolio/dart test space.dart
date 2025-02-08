import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number != null) {
    int factorial = calculateFactorial(number);
    print('Factorial of $number is $factorial');
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

int calculateFactorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * calculateFactorial(n - 1);
}