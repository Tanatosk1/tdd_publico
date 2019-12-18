# = lista.rb
#
# Autor:: David Marcos Ramallo Gracia
# Alu:: alu0101061320@ull.edu.es
#
# == Module Alimento
#
# Con este modulo se pretende contener la clase Alimento
#
# === Clase Lista
#
# Definicion de la clase *Alimento* compuesta por
# * metodo *initialize*: encargado de inicializar valores
# * metodo *insert_head*: funcion que recibe valor e inserta ese valor en lista por su cabeza
# * metodo *extract_head*: funcion que extrae el valor que encabeza la lista
# * metodo *insert_tail*: recibe valor y lo inserta en la lista por la cabeza
# * metodo *extract_tail*: extrae el valor de la cola de la lista
# * metodo each: recorre la lista
#
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



