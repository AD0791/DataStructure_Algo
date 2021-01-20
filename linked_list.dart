// Linked List
 // import 'dart:_internal'; -> LinkedList class
// linked list la dwe ka:
// addfirst
// addlast
// deletefirst
// deletelast
// contains
// indexOf
//import 'package:kt_dart/exception.dart';


void main() {
  Llist exemple = Llist();
  exemple.addLast(10);
  exemple.addLast(123);
  exemple.addLast(12);
  exemple.addLast(23);
  exemple.addFirst(3);
  exemple.addFirst(29);
  exemple.addLast(100);
  exemple.addLast(1000);
  exemple.deleteFirst();
  exemple.deleteLast();

  print(exemple.indexOf(123));
  print(exemple.contains(3));
}

class _NodeClass{
  // node la bezwen yon valeur kanmenm!
  int value;
  _NodeClass(this.value);
  // konnen node ki deyel la (link la)
  dynamic next;
}

class Llist{
  // linklist la dwe konnen premier et dernier node la
  dynamic _first;
  dynamic _last;

  bool _isEmpty(){
    return _first == null;
  }

  

  // function sa ap fenn mete yon linklist en dernier
  void addLast(int item){
    // nous creer yon node
    _NodeClass nodeObject = _NodeClass(item);

    if(_isEmpty()){
      _first = _last = nodeObject;
    } else{
      _last.next = nodeObject;
      _last = nodeObject;
    }
  }


  void addFirst(int item){
    _NodeClass node = _NodeClass(item);

    if (_isEmpty()) {
      _first = _last = node;
    } else {
      node.next = _first;
      _first = node; 
    }
  }

  int indexOf(int item){
    int index = 0;
    var currentNode = _first;
    while (currentNode != null) {
      if(currentNode.value == item) return index;
      currentNode = currentNode.next;
      index++;
    }
    return -1;
  }

  bool contains(int item){
    return indexOf(item) != -1;
  }

  void deleteFirst(){
    if(_isEmpty()){
      throw new Exception("No Such Element");
    }

    if(_first == _last){
      _first = _last = null;
      return;
    }

    var second = _first.next;
    _first.next = null;
    _first = second;
  }

  void deleteLast(){
   var previous = _getPrevious(_last);
   _last = previous;
   _last.next = null;
  }

  dynamic _getPrevious(_NodeClass noeud){
    dynamic current = _first;
    while(current!=null){
      if (current.next == noeud) return current;
      current = current.next;
    }
    return null;
  }


}
