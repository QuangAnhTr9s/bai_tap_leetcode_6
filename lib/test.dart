import 'dart:math';

void main() {
  int n = 0;
  bool isX = true;
  List<int> listX = [];
  //tìm x: 1->n; n%x == 0
  for (int i = 1; i < n; i++) {
    if(n%i == 0){
      listX.add(i);
      isX = true;
    }else{
      isX = false;
    }
  }
  //lấy x random từ listX
  final _random  = Random();
  int x = listX[_random.nextInt(listX.length)];
  print(x);
}
