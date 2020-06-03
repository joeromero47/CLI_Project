class CLI 

        def run 
                welcome
                Api.get_character
                main 
        end 

        def main 
                puts "Please enter a character's corresponding ID to learn more about them. Enter 'exit' to exit."
                input = ''
                while input != 'exit'
                print_all
                input = gets.strip.to_i 
                        RM_Character.find_by_id(input)
                        #binding.pry 
                end 
        end 

        def print_all 
                RM_Character.all.each.with_index{|character| puts "#{character.id}. #{character.name}"}
        end 
        
        def welcome 
                puts "Welcome to the Rick and Morty CLI!"
        end    

end 