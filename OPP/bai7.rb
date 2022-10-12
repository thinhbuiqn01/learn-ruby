class Teacher
      attr_accessor :salary, :bonus, :penaty, :realSalary, :name, :age, :hometown, :id
      def initialize()
          print "Nhap salary: "
          @salary = gets.to_f
          print "Nhap bonus:"
          @bonus = gets.to_f
          print "Nhap penaty: "
          @penaty = gets.to_f
          @realSalary = getRealSalary
          print "Nhap name: "
          @name = gets.chomp
          print "Nhap age:"
          @age = gets.to_i
          print "Nhap hometown: "
          @hometown = gets.chomp
          print "Nhap id: "
          @id = gets.chomp
      end
  
      def getRealSalary
          return @salary + @bonus - @penaty
      end
  
      def toString
          return "Teacher{salary=#{@salary}, bonus= #{@bonus}, penaty=#{@penaty}, 
          realSalary=#{realSalary}, name=#{@name}, age= #{@age}, hometown=#{@hometown}, id=#{id}}"
      end
  end
  
  class ManagerTeacher 
      attr_accessor :teachers
      def initialize()
          @teachers = []
      end
      
      def add(teacher)
          @teachers << teacher
      end
  
      def deleteById(id)
          if @teachers.find{|item| item.id == id}
              @teachers.reject! { |e| e.id == id }
              return true
          end
          return false
      end
  
      def getSalary(id)
          teacher = @teachers.find{|item| item.id == id}
          if teacher.nil?
              return 0
          end
          return teacher.realSalary
      end
  
      def show
          @teachers.each{ |teacher| puts teacher.toString}
      end
  end
  
  managerTeacher  = ManagerTeacher.new
  while true
      puts "Application Manager Teacher"
      puts "Nhap 1: To insert teacher"
      puts "Nhap 2: To remove teacher by id"
      puts "Nhap 3: To get salary"
      puts "Nhap 4: To exit:"
      print "Nhap: "
      line218  = gets.to_i
      case line218
          when 1
              teacher = Teacher.new
              managerTeacher.add(teacher)
              puts teacher.toString
          when 2
              print "Nhap id to delete: "
              id = gets.chomp
              if managerTeacher.deleteById(id)
                  puts "Success"
                  managerTeacher.show
              else
                  puts "Fail"
              end
          when 3
              print "Nhap id to get salary: "
              id = gets.chomp
              puts "Salary: #{managerTeacher.getSalary(id)}"
          when 4 
              break
          else
              puts "Invalid"
      end
  end