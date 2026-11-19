class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}
class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}
void main() {
  // My numbers: D = 67, L = 7
  // Starting balance = 1670 RWF, Bus fare = 267 RWF, Discount = 17%

  BusCard card = BusCard('Gemimah', 1670);
  card.owner = 'Al';
  card.showInfo();

  print('--- TODO 5 ---');
  card.owner = 'Gemimah Bizumuremyi';
  card.showInfo();

  print('--- TODO 6 ---');
  card.topUp(100);
  card.topUp(2000);

  print('--- TODO 7 ---');
  card.pay(267);
  card.pay(267);
  card.showInfo();

  print('--- TODO 8 ---');
  StudentCard studentCard = StudentCard('Gemimah Bizumuremyi', 1670, 17);

  print('--- TODO 9 ---');
  studentCard.pay(267);
  studentCard.showInfo();
}