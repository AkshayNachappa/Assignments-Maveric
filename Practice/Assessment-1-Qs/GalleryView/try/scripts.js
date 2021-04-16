class Node {
  
    constructor(data){
      this.data = data;
      this.prev = null;
      this.next = null;
    }
    
  }
  
  
  class DoublyLinkedList{
    
    constructor(){
      this.head = null;
      this.tail = null;
      this.length = 0;
    }
    
    push(data){
      
      const node = new Node(data);
      
      if(!this.head){
        this.head = node;
        this.tail = node;
      }else{
         node.prev = this.tail; 
        this.tail.next = node;
       
        this.tail = node;
        
      }
      
      this.length++;
    }
    
    
    pop(){
      
      if(!this.head) return null
      
      // tail is the last node so that we take the 
      // prev property from the tail
      const prevNode = this.tail.prev
  
      if(prevNode){
         prevNode.next = null;
         this.tail = prevNode; // updating the tail
      }else{
        // if  prev property is null 
        // it means there is only single node
        this.head = null;
        this.tail = null;
      }
       this.length--; //decrement the length
    }
    
    
    insertBeginning(data){
      
      // new node is created
      const node = new Node(data);
      
      // if there is no nodes
      if(!this.head) {
        this.head = node;
        this.tail = node;
      }else{
        // update the head.prev to the new node
        // take the new node.next property and link it to the
        // head property
        this.head.prev = node
        node.next = this.head;
        this.head = node;
      }
      // increment the length
      this.length++;
      
    }
    
    removeFirst(){
      
      if(!this.head) return null
      
      const node = this.head.next;
      
      if(node){
        node.prev = null
        this.head = node
      }else{
        this.head = null
        this.tail = null
      }
      
       this.length--;
      
    }
    
    
  }
  
  
  
  mocha.setup('bdd');
  
  
  var assert = chai.assert;
  
  describe('Doubly Linked list',()=>{
    
    it("should add the new node at the end",()=>{
      
      const list = new DoublyLinkedList();
      list.push(1)
      list.push(2)
      list.push(3)
      list.push(4)
      
      assert.equal(4,list.length)
        
    })
  
       it("should remove the node at the end",()=>{
      const list = new DoublyLinkedList();
      list.push("A")
      list.push("B")
      list.push("C")
      list.push("D")
       
         list.pop();
         list.pop();
      
      assert.equal(2,list.length)
      assert.equal("B",list.tail.data)
    })
    
    
      it("should insert the new node at the beginning",()=>{
      const list = new DoublyLinkedList();
      list.push("C")
      list.push("D")
      list.insertBeginning("B");
      list.insertBeginning("A");
        
        
      assert.equal(4,list.length);
      assert.equal("A",list.head.data)  
        
    })
    
    
     it("should remove the node at the beginning",()=>{
      const list = new DoublyLinkedList();
      list.push("C")
      list.push("D")
      list.insertBeginning("B");
      list.insertBeginning("A");
      list.removeFirst()  
        
      assert.equal(3,list.length);
      assert.equal("B",list.head.data)  
        
    })
    
  })
  
  
  
  mocha.run()