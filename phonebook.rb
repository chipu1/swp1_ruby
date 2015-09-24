#2번째 시간: 루비를 이용한 전화번호부

phonebook = []

loop do

    puts "Can I have your name?"
    name = gets.chomp
        break if name == "exit"
        
    puts "And...your Phone number?"
    phoneNumber = gets.chomp
    
    puts "Are you male or female?(male/female)"
    gender = gets.chomp
        if gender == "male"
        elsif gender == "female"
        else
          gender == "male"
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

end
