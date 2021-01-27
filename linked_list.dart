// Linked List
// import 'dart:_internal'; -> LinkedList class
// linked list la dwe ka:
// addfirst
// addlast
// deletefirst
// deletelast
// contains
// indexOf
// getting the size
// convert to array

//import 'package:kt_dart/exception.dart';

void main() {
  Llist exemple = Llist();
  print(exemple._size);
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

  var arr = exemple.toArray();

  print(arr);

  print(exemple.indexOf(123));
  print(exemple.contains(3));
  print(exemple._size);
}

class _NodeClass {
  int value;
  _NodeClass(this.value);

  dynamic next;
}

class Llist {
  dynamic _first;
  dynamic _last;
  int _size = 0;

  bool _isEmpty() {
    return _first == null;
  }

  void addLast(int item) {
    _NodeClass nodeObject = _NodeClass(item);

    if (_isEmpty()) {
      _first = _last = nodeObject;
    } else {
      _last.next = nodeObject;
      _last = nodeObject;
    }
    _size++;
  }

  void addFirst(int item) {
    _NodeClass node = _NodeClass(item);

    if (_isEmpty()) {
      _first = _last = node;
    } else {
      node.next = _first;
      _first = node;
    }
    _size++;
  }

  int indexOf(int item) {
    int index = 0;
    var currentNode = _first;
    while (currentNode != null) {
      if (currentNode.value == item) return index;
      currentNode = currentNode.next;
      index++;
    }
    return -1;
  }

  bool contains(int item) {
    return indexOf(item) != -1;
  }

  void deleteFirst() {
    if (_isEmpty()) {
      throw new Exception("No Such Element");
    }

    if (_first == _last) {
      _first = _last = null;
      return;
    } else {
      var second = _first.next;
      _first.next = null;
      _first = second;
    }
    _size--;
  }

  void deleteLast() {
    var previous = _getPrevious(_last);
    _last = previous;
    _last.next = null;

    _size--;
  }

  dynamic _getPrevious(_NodeClass noeud) {
    dynamic current = _first;
    while (current != null) {
      if (current.next == noeud) return current;
      current = current.next;
    }
    return null;
  }

  int size() {
    return _size;
  }

  List<int> toArray() {
    List<int> array = List(_size);
    dynamic current = _first;
    var i = 0;
    while (current != null) {
      array[i++] = current.value;
      current = current.next;
    }
    return array;
  }
}
