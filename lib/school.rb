# code here!
class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.reduce({}) do |memo, (grade, name)|
            memo[grade] = name.sort
            memo
        end
    end

end
