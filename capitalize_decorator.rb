class CapitilizeDecorator < Decorator
    def correct_name
        @correct_name = @nameable.correct_name.capitalize 
    end
end