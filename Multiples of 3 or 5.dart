void main() {
  // This variable will store the sum of all numbers divisible by 3 or 5
  int sum = 0;

  // The upper limit for our search (we want numbers less than 1000)
  int limit = 1000;

  // Loop through all numbers from 1 up to (but not including) 1000
  for (int i = 1; i < limit; i++) {
    // Check if the current number is divisible by 3 or 5
    // The '%' operator gives the remainder after division
    // If the remainder is 0, the number is divisible
    if (i % 3 == 0 || i % 5 == 0) {
      // If the condition is true, add the number to the sum
      sum += i;
    }
  }

  // Print the final result
  // This will output the sum of all numbers less than 1000 that are divisible by 3 or 5
  print(sum);
}

/*
  Mathematical Concept:
  ---------------------
  This code solves a classic problem: Find the sum of all natural numbers below 1000
  that are multiples of 3 or 5.

  - We use a loop to check each number from 1 to 999.
  - If a number is divisible by 3 or 5, we add it to the sum.
  - This problem is a good example of using loops, conditionals, and the modulo operator.

  Try changing 'limit' to see how the sum changes for different ranges!
*/
