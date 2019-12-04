class Rosecollector::CLI
    
    def call
        puts "Roses Rose Roses"
        get_roses
        menu
    end

    def get_roses
        @roses = Rosecollector::Roses.all
        @roses.each.with_index(1) do |rose, i|
            puts "#{i}. #{rose.name} #{rose.price}"
        end
    end

    def menu
        puts "Enter the number associated with rose:"
        puts "type 'list' for rose list or 'exit'"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            if input.to_i > 0
                puts @roses[input.to_i-1]
            elsif input =="list"
                get_rose
            else
                puts "not sure type list or exit"
            end   
        end
    end

    def goodbye
        puts "see you"
    end
end