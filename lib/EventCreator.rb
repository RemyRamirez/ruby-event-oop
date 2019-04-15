require "pry"
require "time"

class EventCreator 
    
    def title
        puts "Salut, tu veux créer un événement ? Cool ! 
        Commençons. Quel est le nom de l'événement ?"
        @title = gets.chomp.to_s
        puts "> #{@title}"
    end

    def start_date
        puts "Super. Quand aura-t-il lieu ?"
        @start_date = Time.parse(gets.chomp.to_s)
        puts "> #{@start_date}"
    end

    def duration
        puts "Au top. Combien de temps en minutes va-t-il durer (en minutes) ?"
        @duration = gets.chomp.to_i
        puts "> #{@duration}"
    end
    
    def  attendees_email
        puts "Génial. Qui va participer ? Balance leurs e-mails"
        @attendees = gets.chomp.split(", ")
        puts "> #{@attendees}"
    end

    puts "Super, c'est noté, ton évènement a été créé !"

end
