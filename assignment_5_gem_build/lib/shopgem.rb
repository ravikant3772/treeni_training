class Shopgem
	
	def main
		obj = BookDb.new
		
		while(0)
			puts "\n\n************* WelCome to BookShop *************\nSelect Operation from below"
			puts "	1.	Enter New Book in Database"
			puts "	2.	Show All Books "
			puts "	3.	Update Book"
			puts "	4.	Delete Book"
			puts "	5.	Add book to kart"
			puts "	6.	Show Kart"
			puts "	7.	Remove book from kart"
			puts "	8.	Checkout"
			puts "	9.	Exit"

			ch = gets.to_i

			case ch
				when 1
						puts 'new book'
						obj.addBooks
				when 2
						puts 'show book'
						obj.showBooks

				when 3
						puts 'update book'
						obj.update
				when 4
						puts 'Delete book'
						obj.delete
				when 5
						puts 'Add to kart'
						obj.add_to_kart
				when 6
						puts 'show kart'
						obj.showKart
				when 7
						puts 'Remove from kart'
						obj.remove_from_kart
				when 8
						puts 'Checkout'
						obj.checkout
				when 9						
						break;
				else
						puts 'Enter Valid option'
			end
		end
	end 

end

require 'shopgem/booksdb'

F = Shopgem.new
F.main()


