class CLI 
  def run 
    welcome
    Api.get_characters
		main 
	end 
	
  def main 
		puts "Please enter a character's corresponding ID to learn more about them."
		print_all
		input = gets.strip
		if input.to_i < 1 || input.to_i > RM_Character.all.size
			puts "Please reenter a correct number."
			main 
		elsif 
			character = RM_Character.find_by_id(input.to_i)
			print_character_info(character)
			continue?
		end
	end 

  def continue?
  	puts "Would you like to search another name? Y or N"
		input = gets.strip.downcase
    if input == 'y'
      main 
		elsif input == 'n'
			goodbye
    else 
			puts "I'm sorry but I did not understand your command."
			continue?
    end 
  end

  def goodbye
    puts "Goodbye!"
		exit!
  end

  def print_character_info(character)              
    puts "Name: #{character.name}. Status: #{character.status}. Species: #{character.species}. URL: #{character.url}."
  end

  def print_all 
    RM_Character.all.each.with_index{|character| puts "#{character.id}. #{character.name}"}
  end 
        
  def welcome 
  	puts "Welcome to the Rick and Morty CLI!"
  end    

end 