class PigLatinizer

    attr_accessor :words, :string

    @words = []
    @string = []

    def piglatinize(user_phrase)
        @string = user_phrase
        break_apart
        rearrange_letters
        put_together
    end

    def break_apart
        @words = @string.split()
    end

    def rearrange_letters
        @words.each_with_index do |word, index|
            if word.start_with?("a", "e", "i", "o", "u","A","E","I","O","U")
                rearranged = word + "way"
            else
                halves = word.split(/([aeiou].*)/)
                rearranged = halves[1].concat(halves[0])
                rearranged << "ay"
            end
            @words[index] = rearranged
        end
    end

    def put_together
        @words.join(" ")
    end

end