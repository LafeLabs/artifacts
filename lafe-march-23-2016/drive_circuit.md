

#### Drive circuit

what do I want from this data structure?

1. sub components(relations, i.e. pointers to other objects)
2. name(tale)
3. date(tale)
4. purpose(lore)
5. other uses(lore)
6. ....



So really it's:

	location:
		[derp](http://location.lafelabs.org/code1234)

	relations:
		contains:
	    	2A transistor<http://location.lafelabs.org/code3421>
	   		100V diode
	   		10k resistor
	   	location:
	   		my pocket
	
	tale:
		creation: 
			I made this thing, it was one of a series of attempts to build a universal drive circuit for trash magic coils
		life 1:
			I'm carrying this thing around in my pocket, working on the concept for this file format(which will change a lot I'm sure)
		#date March 24 2016
		
		
	lore:
		how to build:
		how to use:
		
		
I think where this is going is that it's going to be all markdown.

* #### first thing
	* another thing lower down
	 	* still another layer lower
			* this one as a [link]()
		* back up a layer
	* and up to the first *sub* layer
* second thing
			
	
