class Phone {
  // Bug 1 & 2 fixed: Added starting values ('' and 0)
  String _brand = '';
  int _battery = 0;

  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  int get battery {
    return _battery;
  }

  // Bug 5 fixed: Added a setter for battery that accepts only 0 to 100
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    }
  }
}

class SmartPhone extends Phone {
  String _system = '';

  // Bug 3 fixed: Added ": super(brand, battery)" so the parent class builds first
  SmartPhone(String brand, int battery, String system) : super(brand, battery) {
    _system = system;
  }

  // Bug 4 fixed: Removed "@override void restart()" because the parent Phone 
  // does not have a restart method.
}

void main() {
  Phone p = Phone('Tecno', 50);
  
  // Not a bug: This line works perfectly now because we added the setter above
  p.battery = 100; 
  
  // Bug 6 fixed: Removed the brackets () from p.battery() because it is a getter, not a method
  print(p.battery);
}