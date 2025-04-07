import 'dart:math';

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate = 0;

  Loan(this.borrowerName, this.loanAmount);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount) {
    interestRate = 0.10;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 12;
    return (loanAmount * monthlyRate) /
        (1 - (1 / pow(1 + monthlyRate, months).toDouble()));
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount) {
    interestRate = loanAmount > 500000 ? 0.095 : 0.08;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 12;
    return (loanAmount * monthlyRate) /
        (1 - (1 / pow(1 + monthlyRate, months).toDouble()));
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount) {
    if (loanAmount > 50000) {
      this.loanAmount += loanAmount * 0.02;
    }
    interestRate = 0.07;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 12;
    return (loanAmount * monthlyRate) /
        (1 - (1 / pow(1 + monthlyRate, months).toDouble()));
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
    print('Loan applied for ${loan.borrowerName}');
  }

  void calculateInstallments(int months) {
    print('\nMonthly Installments for $months months:');
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          'Borrower: ${loan.borrowerName} | Loan Amount: ${loan.loanAmount.toStringAsFixed(2)} | Monthly Installment: ${installment.toStringAsFixed(2)}');
    }
  }
}

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan('Ali', 20000));
  system.applyLoan(HomeLoan('Sara', 1000000));
  system.applyLoan(CarLoan('Omar', 55000));

  system.calculateInstallments(12);
}
