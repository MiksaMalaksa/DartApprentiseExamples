void main() {
  //const smth
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = hourlyRate * hoursWorked;

  final List<int> listF = [1,2,3];
  const List<int> listC = [1,2,3];

  //anonymus functions
  Function tellWonderfull =
      (String name) => print("$name you are a wonderfull person");
  List<String> names = ['Chris', 'Tiffani', 'Pablo'];

  names.forEach((name) {
    tellWonderfull(name);
  });

  Calculator calcu = Calculator();
  print(calcu.sum(1, 2));

  print(60.Time);

  print("Before futures");

  final myFuture = Future<int>.delayed(Duration(seconds: 5), () => 54)
      .then((value) => print("value $value"))
      .whenComplete(() => print("completed :D"));

  print("code after futures");

  Future<String> message = Future.delayed(Duration(seconds: 2),() {return "hello smth";});
  message.then((value) => print("here the value:$value"),).whenComplete(() => print("completed"),);

 messageToFuture(message: "Hello, Future!");

  //final a = testik();
}

class SomeClass {
  int? age;
  String? name;

  //Lox(this.age,this.name);
  SomeClass({required age, this.name = "kto"})
      : assert(age > 100),
        this.age = age; //assert only works in debug

  SomeClass.misha()
      : age = 18,
        name = "Misha";
  //Lox.mikhail() : this(18, "Mikhail"); this will work only if we have 22 line
  SomeClass.mikhail() : this(age: 10);
}

class Calculator with Adder {}

mixin Adder {
  int sum(int left, int right) {
    return left + right;
  }
}

extension on int {
  int get Time {
    return Duration(minutes: this ~/ 60).inMinutes;
  }
}

  Future<void> tesik() async {
    print('Before the future');
    final value = await Future<String>.delayed(
      Duration(seconds: 2),
      () => "i am from future",
    );
    print("$value - again");
    print('After the future');
  }

  Future<void> messageToFuture({required String message}) async{
    print("Smth");
    final getFuture = await getFutureMessage(message);
    print(getFuture);

  }

  Future<String> getFutureMessage(String message){
    return Future.delayed(Duration(seconds: 1),(){return "$message";});
  }