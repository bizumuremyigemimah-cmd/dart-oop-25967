# Dart OOP Assignment: Kigali Bus Card

**Name:** Gemimah Bizumuremyi
**Student ID:** 25967

## My numbers
- D = 67, L = 7
- Starting balance = 1670 RWF
- Bus fare = 267 RWF
- Student discount = 17%

## Output of main.dart
Error: name too short
Owner: Gemimah | Balance: 1670 RWF
--- TODO 5 ---
Owner: Gemimah Bizumuremyi | Balance: 1670 RWF
--- TODO 6 ---
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
--- TODO 7 ---
Paid 267 RWF
Paid 267 RWF
Owner: Gemimah Bizumuremyi | Balance: 3136 RWF
--- TODO 8 ---
--- TODO 9 ---
Student discount: 45 RWF
Paid 222 RWF
Owner: Gemimah Bizumuremyi | Balance: 1448 RWF
Student card: 17% off

## Part 1: Why no setter for balance?
It is for the safety of the system. If we allowed a setter, anyone could cheat and change their balance to a million RWF. By making it read-only, the balance can only change through the proper methods like topUp() and pay(), which have rules

## Part 2: What does ~/ do?
~/ is integer division. It divides the numbers and discards the decimal part. For example, 237 * 17 / 100 gives 40.29 (a double), but 237 * 17 ~/ 100 gives 40 (an int). It ensures the discount is a whole number without decimals.

## Part 4: Bug table

## Part 4: Bug table

**Bug 1:**
- The line: `String _brand;` and `int _battery;`
- Why it is wrong: In Dart, class fields must have a starting value (like we did in BusCard) or be marked as nullable. They cannot just be empty.
- My fix: `String _brand = '';` and `int _battery = 0;`

**Bug 2:**
- The line: `SmartPhone(String brand, int battery, String system)`
- Why it is wrong: The child class SmartPhone is not calling the parent Phone constructor.
- My fix: Added `: super(brand, battery)` to the constructor.

**Bug 3:**
- The line: `@override void restart()`
- Why it is wrong: `@override` only works if the parent has that method. The parent Phone has no restart method.
- My fix: Deleted the `restart` method entirely.

**Bug 4:**
- The line: `p.battery()`
- Why it is wrong: `battery` is a getter (a property), not a method, so it does not need parentheses.
- My fix: Changed to `print(p.battery);`

**Bug 5:**
- The line: `p.battery = 100;`
- Why it is wrong: Even though it looks like a bug (because there was no setter in the original code), the instructions tell us NOT to delete it. We must make it work.
- My fix: Added a setter for battery that only accepts values from 0 to 100.

**Not a bug:**
- The line: `p.battery = 100;`
- Why is this line fine? It is fine because we added the setter, so the program runs and prints exactly `100`.
## Part 5
My prediction:
It will print 1, then 5. The first Bag stays at 1 because -5 is rejected by the setter. The BigBag adds 2 items per call, so two calls = 4, plus 1 = 5.
Real output:
1
5
Was I right? 
Yes, my prediction was correct.
 
