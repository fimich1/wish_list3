class Task {
 // испльзуеется в файле таск лист как объект задачи
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;  // переворачивает рубильник
  }


}