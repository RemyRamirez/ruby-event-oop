require "pry"
require "time"

class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize (start_date, duration, title, attendees)
        @start_date = Time.parse(start_date.to_s)
        @duration = duration.to_i
        @title = title.to_s
        @attendees = attendees
    end

    def change_start_date (new_start_date)
        @start_date = Time.parse(new_start_date.to_s)
    end

    def change_duration(new_duration)
        @duration = new_duration
    end

    def end_date
        @end_date = @start_date + (@duration*24*3600)
    end

    def postpone_24h
        @start_date = @start_date + (24*3600)
    end

    def is_past?
        if @end_date < Time.now
            puts "--> Event is past"
            return true
        end
    end

    def is_future?
        if @start_date > Time.now
            puts "--> Event is in future. it is planned on the #{@start_date} until the #{@end_date} "
            return true
        end
    end

    #Is soon ne marche pas pour le moment
    def is_soon?
        delta_date = @start_date - Time.now
        if 0 < delta_date < 1800
            puts "Less than 30 minutes before the event "
            return true
        end
    end

    def to_s
        puts ">Title : #{@title}"
        puts ">Start Date : #{@start_date}"
        puts ">Duration : #{@duration}"
        @attendees = @attendees.join(", ")
        print ">Attendees : #{@attendees}"
    
    end

puts "end of program"

end

coffee_lesson = Event.new("15/02/19", 4, "Bratisla Boys", ["john", "Snow"])
coffee_lesson.to_s

=begin

    --> Un événement est défini par :
        - une date de début
        - une durée
        - un titre
        - un ou plusieurs utilisateurs.
    --> Il faut être capable de décaler un événement au lendemain, même heure.
    --> Il faut qu'il soit possible de récupérer des informations comme :
        - La date de fin ;
        - Savoir si un événement est passé ou non ;
        - Savoir si un événement est dans moins de 30 minutes (au cas où nous voudrions envoyer un rappel).
    --> Il faut que l'on soit capables d'afficher de manière présentable un événement

=end