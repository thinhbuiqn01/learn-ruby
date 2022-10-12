class Person
      attr_accessor :name, :age, :job, :passport
      def initialize()
          print "Nhap name: "
          @name = gets.chomp
          print "Nhap age: "
          @age = gets.to_i
          print "Nhap job: "
          @job = gets.chomp
          print "Nhap passport: "
          @passport = gets.chomp
      end
  
      def toString
          return "name=#{@name}, age= #{@age}, job=#{@job}, passport=#{@passport}"
      end
  end
  
  class Family
      attr_accessor :persons, :address
  
      def initialize()
          print "Nhap number person of family: "
          n = gets.to_i
          @persons = []
          for i in 1..n
              puts "\nNhap person #{i}:"
              person = Person.new
              @persons << person
          end
          print "Nhap address: "
          @address = gets.chomp
      end
      
      def toString
          str = " "
          i = 1
          @persons.each{ |person| 
              str += "person#{i}{#{person.toString}}\n"
              i += 1
          }
          return str
      end
  end
  
  class Town
      attr_accessor :families
      def initialize()
          print "Nhap number family of town: "
          n = gets.to_i
          @families = []
          for i in 1..n
              puts "\nNhap family #{i}:"
              family = Family.new
              @families << family
          end
      end
      
      def toString
          str = " "
          i = 1
          @families.each{ |family| 
              str += "Family#{i}{#{family.toString}}\n"
              i += 1
          }
          return str
      end
  end
  
  town  = Town.new
  puts "\nShow Info Town:"
  puts town.toString