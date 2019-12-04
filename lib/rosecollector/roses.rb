class Rosecollector::Roses
    attr_accessor :name, :price, :url
    def self.all
        # puts <<-DOC
        # 1. rose 1
        # 2. rose 2
        # DOC
        rose_1 = self.new
        rose_1.name = "rose 1 name"
        rose_1.price = "$27"
        rose_1.url = "url"
        
        rose_2 = self.new
        rose_2.name = "rose 2 name"
        rose_2.price = "$27"
        rose_2.url = "url"
        
        [rose_1, rose_2]
    end

end
