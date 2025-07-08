// This program finds and prints all the prime factors of a given number.
// Prime factors are numbers that are both prime and divide the target number exactly.

void main() {
  // The number we want to find the prime factors of.
  int targetNumber = 600851475143;

  // This list will store the prime factors we find.
  List<int> primeFactors = [];

  // Start checking from the smallest prime number (2).
  // We only need to check up to the square root of targetNumber for efficiency.
  int divisor = 2;
  int number = targetNumber;

  // Loop to find all prime factors.
  while (divisor * divisor <= number) {
    // If the current divisor divides the number exactly,
    // it is a prime factor.
    if (number % divisor == 0) {
      primeFactors.add(divisor);
      // Divide the number by the found prime factor and continue.
      number ~/= divisor;
    } else {
      // Move to the next possible divisor.
      // After 2, we can skip even numbers for efficiency.
      divisor = (divisor == 2) ? 3 : divisor + 2;
    }
  }

  // If the remaining number is greater than 1, it is also a prime factor.
  if (number > 1) {
    primeFactors.add(number);
  }

  // Print all found prime factors.
  print('Prime factors of $targetNumber are:');
  for (var factor in primeFactors) {
    print(factor);
  }
}

/*
  Mathematical Problem Explanation:
  ---------------------------------
  The goal is to find all the prime factors of a given number.
  - A factor is a number that divides another number exactly (with no remainder).
  - A prime factor is a factor that is also a prime number (it is only divisible by 1 and itself).

  Example:
    For the number 28, its prime factors are 2 and 7 because:
    28 = 2 × 2 × 7

  Why do we only check up to the square root?
    If a number has a factor larger than its square root, it must also have a factor smaller than its square root.
    So, checking up to the square root is enough to find all factors.

  This program uses a loop to check each number starting from 2.
  If it divides the target number, it is added to the list of prime factors, and the target number is divided by this factor.
  The process repeats until all factors are found.

  This is a common technique in mathematics and programming for number theory problems.
*/
