import 'package:threads/data/data.dart';
import 'package:threads/data/thread.dart';

abstract class Ithread {
  List<thread> getThread();
}

class ThreadRemoteDataSource extends Ithread {
  @override
  List<thread> getThread() {
    return ListThread()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
