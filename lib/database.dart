import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDolist = [];

  final _mybox = Hive.box('mybox');
  //
  void createInitialData() {
    toDolist = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

  //Load the data from database
  void loadData() {
    toDolist = _mybox.get('TODOLIST');
  }

  //update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDolist);
  }
}
