// Linked List

 // import 'dart:_internal'; -> LinkedList class



// linked list la dwe ka:
// addfirst
// addlast
// deletefirst
// deletelast
// contains
// indexOf


void main() {
  var exemple = Llist();
  exemple.addLast(10);
  exemple.addLast(123);
  exemple.addLast(12);
  exemple.addLast(23);
  exemple.addFirst(3);

  print(exemple.indexOf(123));
}

class _NodeClass{
  // node la bezwen yon valeur kanmenm!
  int value;
  _NodeClass(this.value);
  // konnen node ki deyel la
  _NodeClass next;
}

class Llist{
  // linklist la dwe konnen premier et dernier node la
  _NodeClass _first;
  _NodeClass _last;

  bool _isEmpty(){
    return _first == null;
  }

  // function sa ap fenn mete yon linklist en dernier
  void addLast(int data){
    // nous creer yon node
    _NodeClass nodeObject = _NodeClass(data);

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


}
