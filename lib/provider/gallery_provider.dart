import 'package:flutter/foundation.dart';

class GalleryProvider with ChangeNotifier{
  List<String> _list =[];
  bool _enableDelete = false;
  List get list => _list;
  bool get enableDelete => _enableDelete;

  setEnableDelete(bool enableDelete){
    _enableDelete = enableDelete;
    notifyListeners();
  }
  addList(String string){
    _list.add(string);
    notifyListeners();
  }

  deleteIndex(int index){
    _list.removeAt(index);
    notifyListeners();
  }
}