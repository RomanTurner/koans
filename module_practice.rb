require 'pry'

module Dance

    module InstanceMethods

      def twirl
          "I am twirling"    
      end
  
      def jump
          "Look how high I am jumping"
      end
  
      def pirouette
          "I am doing a pirouette"
      end
  
      def take_a_bow
          "Thank you, thank you. It was a pleasure for you all."
      end

    end


    module ClassMethods

     def metadata
        "This class produces objects that love to dance."
     end

    end

end

class Teacher
    attr_accessor :name
    def initialize
        @name = name 
    end

    def teach 
    "I am teaching you now"
    end 
    
end

class DanceTeacher < Teacher
    extend Dance::ClassMethods
    include Dance::InstanceMethods

    attr_accessor :name
    def initialize name
        @name = name 
    end
end

class Student
    attr_accessor :name
    def initialize name 
        @name = name 
    end
end

class StudentDancer 
    attr_accessor :name 

    def initialize name
        @name = name
    end
end

binding.pry