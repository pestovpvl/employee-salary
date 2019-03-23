# This class allows you to perform various
# operations on the words in a string.
class WordSplitter
    include Enumerable
    # The string to split into words.
    attr_accessor :string
    # Passes each word in the string to a block
    # one at a time.
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