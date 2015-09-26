#2번째 시간: 루비를 이용한 전화번호부

phonebook = []

loop do
    puts "What do you want to do? (create/delete)"
    decision = gets.chomp
        if decision == "create"
            puts "Can I have your name? (if you type 'exit', it will be closed)"
            name = gets.chomp
                break if name == "exit"
                
            puts "And...your Phone number?"
            phoneNumber = gets.chomp
            
            puts "Are you male or female?(male/female)"
            gender = gets.chomp
                if gender == "male"
                elsif gender == "female"
                else
                  gender = "male"
                  puts "hmm...I wiil set male as your gender"
                end
    
            member = {
                name: name,
                phoneNumber: phoneNumber,
                gender: gender
            }
            
            phonebook << member
            
            phonebook.each do |u|
                print u[:name,] + " // "
                print u[:phoneNumber,] + " // "
                puts u[:gender,]
            end    
            
        elsif decision == "delete" 
            puts "Input name you want to remove"
            remove = gets.chomp
            phonebook.each do |x|
                if remove = x[:name,]
                    puts "delete #{x[:name]}"
                    phonebook.delete(member) #여기에서 무엇이 문제죠?
                else
                    puts "There is no such kind of name :)"
                end
            end
        else
            puts "please type 'create' or 'delete'"
        end
        
end
