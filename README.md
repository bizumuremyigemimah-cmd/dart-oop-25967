# Dart OOP Assignment: Kigali Bus Card

**Name:** Gemimah Bizumuremyi
**Student ID:** 25967

## My numbers
- D = 67, L = 7
- Starting balance = 1670 RWF
- Bus fare = 267 RWF
- Student discount = 17%

## Output of main.dart

```text
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

| Bug | The line | Why it is wrong | Your fix |
|---|---|---|---|
| 1 | `String _brand;` | Fields must have starting values. | Added `= '';` and `= 0;` |
| 2 | `SmartPhone(...)` | Child class isn't calling the parent constructor. | Added `: super(brand, battery)` |
| 3 | `@override void restart()` | Parent has no `restart` method. | Deleted the method. |
| 4 | `p.battery()` | `battery` is a getter, not a method. | Changed to `print(p.battery);` |
| 5 | `p.battery = 100;` | Needs a setter to work. | Added `set battery` method. |
| Not a bug | `p.battery = 100;` | It works perfectly now because of the setter. | (none) |
## Part 5
My prediction:
It will print 1, then 5. The first Bag stays at 1 because -5 is rejected by the setter. The BigBag adds 2 items per call, so two calls = 4, plus 1 = 5.
Real output:
1
5
Was I right? 
Yes, my prediction was correct.
 
