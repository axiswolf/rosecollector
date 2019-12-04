class Rosecollector::CLI
    
    def call
        puts "Roses Rose Roses, get your roses!"
        get_roses
        menu
    end

    def get_roses
        @roses = Rosecollector::Roses.scrape_site
        @roses.each.with_index(1) do |rose, i|
            puts "#{i}. #{rose.name}"
        end

    end
    
    def menu
        puts "Enter the number associated with rose:"
        puts "type 'list' for rose list or 'exit'"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i <= @roses.count
                rose = @roses[input.to_i-1]
                puts "#{@rose.name}"
                puts "#{@rose.url}"
                puts "#{@rose.price}"
                puts "#{@rose.description}"
                puts "Type 'list' to view the list again, or 'exit'"
            elsif input =="list"
                get_roses
            elsif input.to_i > @roses.count
                puts "We don't have that, type 'list' or 'exit'"
            end 
        end
        goodbye  
    end

    def goodbye
        puts "See you, come back next time."
    end
end