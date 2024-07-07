//question 5
class OverdraftException implements Exception {
  String errorMessage() => 'Cannot withdraw more than current balance';
}

class BankAccount {
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. Current balance: $balance');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw OverdraftException();
    } else {
      balance -= amount;
      print('Withdrawn $amount. Current balance: $balance');
    }
  }
}
