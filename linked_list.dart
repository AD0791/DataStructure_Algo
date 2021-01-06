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

  // function sa ap fenn mete yon linklist en dernier
  void addLast(int data){
    // nous creer yon node
    _NodeClass nodeObject = _NodeClass(data);

    if(_first == null){
      _first = _last = nodeObject;
    } else{
      _last.next = nodeObject;
      _last = nodeObject;
    }
  }


}
