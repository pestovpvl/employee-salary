class WordSplitter
    include Enumerable
    attr_accessor :string
    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end

splitter = WordSplitter.new
splitter.string = "one two three four den"

splitter.each do |word|
    puts word
end

p splitter.find_all { |word| word.include?("d") }
p splitter.reject { |word| word.include?("d") }
p splitter.map { |word| word.reverse }