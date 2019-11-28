module Alimento
Node = Struct.new(:value, :next, :prev)
class Lista
	  include Enumerable
	  attr_reader :head, :tail, :size
	  def initialize
		  @head = nil
		  @tail = nil
		  @size = 0
	  end
	  def insert_head(value)
		  nodo = Node.new(value,nil,nil)
		  if @size == 0
			  @tail = nodo
			  nodo.next = nil
		  else
			  @head.prev = nodo
			  nodo.next = @head
		  end
		  @size = @size + 1
		  @head = nodo
		  nodo.prev = nil
	  end
	  def extract_head
		  if @size != 0
			  aux = @head
			  if @size > 1
				  @head.next.prev = nil
			  else
				  @tail = nil
			  end      
			  @head = @head.next
			  @size = @size-1
			  return aux
		  else			      
			  puts "La lista esta vacia"   
	      	  end		          
	  end
	  def extract_tail
		  if @size != 0
			  aux = @tail
			  if @size > 1
				  @tail.prev.next = nil
			  else		
				  @head = nil			
		    	  end
			  @tail = @tail.prev
  			  @size = @size - 1	
	    		  return aux			
		  else
			
  			  puts "La lista esta vacia"
				
		  end
	  end
      	  def each(&block)
	    	  aux = @head
		  while aux!=nil do
			  yield aux.value
			  aux = aux.next 
		  end
	  end
      	  def [] (index)
		  if index.is_a?Integer		
			  if index == 0		
			   	  return @head.value
		   	  elsif index == (@size-1)
			    	  return @tail.value
			  elsif index < (@size-1) && index > 0
				  iterator = @head		
				  index.times{iterator = iterator.next}
				  return iterator.value	
			  else	
	    			  return nil		
      			  end
		  end
    	  end
end
end



