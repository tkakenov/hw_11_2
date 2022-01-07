void main() {
  MyString hello = MyString();
  String someString = "hello world! what's a wonderful life";
  hello.reverse(someString);
  hello.ucFirst(someString);
  hello.ucWords(someString);
}

class MyString {
  MyString();

  reverse(String someString) {
    List arrayOfWords = someString.split("");
    String reversedString = arrayOfWords.reversed.join();
    print(reversedString);
  }

  ucFirst(String someString) {
    String firstToUc =
        someString.replaceFirst(someString[0], someString[0].toUpperCase());
    print(firstToUc);
  }

  ucWords(String someString) {
    List arrOfWords = someString.split(" ");
    List arrToUc = [];
    for (int i = 0; arrOfWords.length > i; i++) {
      String a = arrOfWords[i]
          .replaceAll(arrOfWords[i][0], arrOfWords[i][0].toUpperCase());
      arrToUc.add(a);
    }
    String stringToUc = arrToUc.join(" ");
    print(stringToUc);
  }
}
