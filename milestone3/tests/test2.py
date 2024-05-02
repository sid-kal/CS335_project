

# Define a class for bank accounts
class BankAccount:
    def __init__(self, account_number: str, balance: int):
        self.account_number: str = account_number
        self.balance: int = balance
    
    # Method for depositing money into the account
    def deposit(self, amount: int) -> None:
        self.balance += amount
        print("Deposited and New balance: ")
        print(amount)
        print(self.balance)
    
    # Method for withdrawing money from the account
    def withdraw(self, amount: int) -> None:
        if self.balance >= amount:
            self.balance -= amount
            print("Withdrew and New balance: ")
            print(amount)
            print(self.balance)
        else:
            print("Insufficient funds!")
    
    # Method to display account information
    def display(self) -> None:
        print("Account Number and Balance: ")
        print(self.account_number)
        print(self.balance)
        

# Define a subclass for savings accounts
class SavingsAccount(BankAccount):
    def __init__(self, account_number: str, balance: int, interest_rate: int):
        self.account_number = account_number
        self.balance = balance
        self.interest_rate: int = interest_rate
    
    # Method to calculate and add interest to the balance
    def add_interest(self) -> None:
        interest_amount: int = self.balance * (self.interest_rate / 100)
        self.balance += interest_amount
        print("Interest added and New balance:")
        print(interest_amount)
        print(self.balance)

# Define a subclass for checking accounts
class CheckingAccount(BankAccount):
    def __init__(self, account_number: str, balance: int, overdraft_limit: int):
        self.account_number = account_number
        self.balance = balance
        self.overdraft_limit: int = overdraft_limit
    
    # Method to withdraw money, allowing overdraft up to the limit
    def withdraw(self, amount: int) -> None:
        if self.balance + self.overdraft_limit >= amount:
            self.balance -= amount
            print("Withdrew and New balance:")
            print(amount)
            print(self.balance)
        else:
            print("Transaction declined! Overdraft limit exceeded.")

def main() -> None:
    # Create a savings account
    savings_acc :SavingsAccount= SavingsAccount("SA001", 1000, 200)
    savings_acc.deposit(500)
    savings_acc.add_interest()
    savings_acc.withdraw(200)
    savings_acc.display()

    print("--------------------------------")

    # Create a checking account
    checking_acc :CheckingAccount= CheckingAccount("CA001", 2000, 500)
    checking_acc.deposit(1000)
    checking_acc.withdraw(3000)
    checking_acc.withdraw(500)
    checking_acc.display()

if __name__ == "__main__":
    main()
