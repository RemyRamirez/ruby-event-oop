require "pry"

class User
    attr_accessor :email, :age
    @@user_count = 0 
    @@all_users = []

    def initialize(email, age)
        @user_email = email.to_s
        @user_age = age.to_i
        @@user_count = @@user_count + 1
        @@all_users << @user_email
    end

    def self.all
        return @@user_count
    end

    def self.all_users
        return @@all_users
    end


    def show_itself
        puts self
    end

    #pas réussi
    def self.find_by_email (email_input)
        user_1 = @@all_users.each do |user|
            if user == email_input
                return user_1.age  
            end
        end
    end

puts "end of program"

end