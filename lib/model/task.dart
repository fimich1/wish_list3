class Task {
 // испльзуеется в файле таск лист как объект задачи
  String name;
  bool isDone;
  String ed_ism;
  double massa;

  Task({
    required this.name,
    this.isDone = false,
    required this.ed_ism,
    required this.massa,
  });

  void toggleDone(){
    isDone = !isDone;  // переворачивает рубильник
  }


}