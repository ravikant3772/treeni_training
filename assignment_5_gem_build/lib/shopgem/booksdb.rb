class Shopgem::BookDb

	
	def initialize
		
		@books=[]
		@karts=[]
		@ttl_books=0
		@books_in_kart=0

		bFile = File.open("booksdb.txt", "a+")
		if bFile
		  arr = IO.readlines("booksdb.txt")		
		  i = 0
		  while(i < arr.length-1)
		  	  @ttl_books +=1
			  details = []	
			  bcode = (arr[i]).to_i
			  details.push bcode
			  bname = (arr[i+1]).chomp
			  details.push bname
			  bprice = (arr[i+2]).chomp
			  details.push bprice
			  bqnty = (arr[i+3]).to_i
			  details.push bqnty
			  @books << details
			  i+=4
			end
		else
			puts "Unable to open file!"
		end
		
		bFile.close
	end

	def addBooks
		
		bname = ' '
		bprice = 0
		
			
		  details = []	
		  puts 'Enter Book code:'
		  bcode = gets.to_i
		  details.push bcode
		  puts 'Enter Book Name:'
		  bname = gets.chomp
		  details.push bname
		  puts 'Enter Price'
		  bprice = gets.to_i
		  if bprice < 1
		  	puts 'Enter price greater than 0'
		  	return
		  end
		  details.push bprice
		  puts 'Enter Quantity'
		  bqnty = gets.to_i
		  if bqnty < 1
		  	puts 'Enter quantity greater than 0'
		  	return
		  end
		  details.push bqnty
		  @books << details
		  
		  @ttl_books +=1
		  add_to_database
		  
	end

	def showBooks
	
		puts "srno	code	BookName	Price 	Quantity"
		i=0
		@books.each do |book|

			print (i+=1) 
			print"	"+book[0].to_s+"	"+book[1].to_s+"	"+book[2].to_s+"	"+book[3].to_s+"\n"
			
		end
		puts
	end


	def add_to_kart()
		kart = []

			
			showBooks
			puts 'select book for add to cart'
			choice = gets.to_i
			puts 'Enter Quantity'
			qnt = gets.to_i 
			if (choice > @ttl_books)
				puts "Enter Valid Number"
				return
			end
				if @books[choice-1][3].to_i === 0
					puts '  ** book is out of stock '
				elsif @books[choice-1][3].to_i < qnt  && qnt > 0 	
					puts '  ** Enter valid quantity '+ @books[choice-1][3].to_s
				else
					kart[0] = @books[choice - 1][0]
					kart[1] = @books[choice-1][1]
					kart[2] = @books[choice-1][2]
					kart[3] = qnt
					@karts.push kart
					@books[choice-1][3] = (@books[choice-1][3]).to_i - qnt
					puts @books[choice-1][1].to_s + " Added to cart "

					puts 'Do you wnt to add more books in your cart y/n'
					chh=gets.chomp
						if chh === 'y' || chh ==='Y'
							add_to_kart
						end
					#add_to_database
				end	
			
			
			
			#if @books[choice-1][3]==0
				
			#end
			
	end

	def showKart
		puts 'Your Kart '
		puts "srno		code		Book Name		Price		Quantity"
		i = 0
		@karts.each do |book|
			  @books_in_kart +=1
			  print "\n"+(i+=1).to_s+"		"+book[0].to_s+"			"+book[1].to_s+"		"+book[2].to_s+"		"+book[3].to_s
		end
		 puts
	end

	def remove_from_kart
		showKart
		puts 'Enter the book to remove from kart'
			choice = gets.to_i
			if (choice > @books_in_kart)
				puts "Enter Valid Number"
			
			else
		
				code = @karts[choice-1][1]

				i=0
				@books.each do |book|
			  			if book[1]==code
			  					@books[i][3] = (@books[i][3]).to_i + 1
			  			end
			  			i+=1
				end
				@karts[choice-1][3] = (@karts[choice-1][3]).to_i - 1
				showKart
			end
				
	end

	def checkout
		total=0
		@karts.each do |book|
			  total = total + (book[2].to_i * book[3].to_i)
		end
		showKart
		puts 'Your total bill is : ' + total.to_s

		add_to_database
	end

	def add_to_database
		
		aFile = File.new("booksdb.txt", "w+")
		if aFile
			aFile.puts @books
		else
	    	puts "Unable to open file!"
		end

		aFile.close
	end

	def update
		showBooks
		puts 'Enter sr no to update book'
		ch=(gets.to_i)-1
		if (ch >= @ttl_books)
			puts "Enter Valid Number"
		else
			puts 'current name :'+ @books[ch][1]
			puts 'enter new name:'
			@books[ch][1]=gets.chomp
			puts 'current price :'+ (@books[ch][2]).to_s
			puts 'enter new price:'
			@books[ch][2]=gets.to_i
			puts 'current Quantity :'+ (@books[ch][3]).to_s
			puts 'enter new Quantity:'
			@books[ch][3]=gets.to_i
			puts"Data Updated"
			add_to_database	
		end
		
	end

	def delete

		showBooks
		puts 'Enter sr no to delete book'
		ch = (gets.to_i)-1
		if (ch >= @ttl_books)
			puts "Enter Valid Number"
		else
			@books.delete_at(ch)
			puts 'book deleted'
			add_to_database	
		end
		
	end
end