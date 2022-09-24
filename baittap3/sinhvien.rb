class Human
      @name_262;
      @hair_262;
      @age_262;
      @height_262;
      @weight_262;
      @email_262;
      @phone_262;
      @nation_262;
   
      def initialize(name_262, hair_262, age_262, height_262, weight_262, email_262, phone_262,nation_262)
         @name_262 = name_262;
         @hair_262 = hair_262;
         @age_262 = age_262;
         @height_262 = height_262;
         @weight_262 = weight_262;
         @email_262 = email_262;
         @phone_262 = phone_262;
         @nation_262 = nation_262;
      end
   
      attr_accessor :name_262, :hair_262, :age_262, :height_262, :weight_262, :email_262, :phone_262, :nation_262;
   
      def showInformation
         puts "\nName : #{name_262}||Hair: #{hair_262}||Age: #{age_262}||Height: #{height_262}||Weight: #{weight_262}||Email: #{email_262}||Phone: #{phone_262}||Nation: #{nation_262};"
       end
   end
   
   class Student < Human
      $code_262;
      $grade_1_262;
      $grade_2_262;
      $grade_3_262;
   
      def initialize(name_262, hair_262, age_262, height_262, weight_262, email_262, phone_262,nation_262, code_262, grade_1_262, grade_2_262, grade_3_262)
         super(name_262, hair_262, age_262, height_262, weight_262, email_262, phone_262,nation_262)
         @code_262 = code_262;
         @grade_1_262 = grade_1_262;
         @grade_2_262 = grade_2_262;
         @grade_3_262 = grade_3_262;
      end
   
      def code_262
         @code_262
      end
      def grade_1_262
         @grade_1_262
      end
      def grade_2_262
         @grade_2_262
      end
      def grade_3_262
         @grade_3_262
      end
      
      def code_262=(code_262)
         @code_262 = code_262
      end
      def grade_1_262=(grade_1_262)
         @grade_1_262 = grade_1_262
      end
      def grade_2_262=(grade_2_262)
         @grade_2_262 = grade_2_262
      end
      def grade_3_262=(grade_3_262)
         @grade_3_262 = grade_3_262
      end
      
      def average_262
         (@grade_1_262 + @grade_2_262 + @grade_3_262 )*1.0/3
      end
   
      def showInformation
         super
         puts "Code : #{code_262}\nAverage score: #{average_262};
          "
      end
   end
   
   # name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
   listStudent_262 = Array.new
   student_1_262 = Student.new("Thinh1","Black",21,170, 70, "Thinh1@gmail.com","0905123456","VN",1911505310262, 10,10,9)
   student_2_262 = Student.new("Thinh2","Yellow",22,180, 80, "Thinh2@gmail.com","0905456789","VN",1911505310262, 9,10,9)
   student_3_262 = Student.new("Thinh3","Blue",23,190, 90, "Thinh3@gmail.com","0905987654","VN",1911505310262, 9,9,9)
   
   listStudent_262.push(student_1_262, student_2_262,student_3_262)
   puts 'Show student list :'
   for i in 0..(listStudent_262.length-1)
       puts "- Student #{i+1}"
       puts listStudent_262[i].showInformation
    end
   
    puts 'Sorted student list :'
   
    studentSort_262 = listStudent_262.sort_by{|student| [student.average_262]}.reverse
    for i in 0..(studentSort_262.length-1)
       puts "- Student #{i+1} :"
       puts studentSort_262[i].showInformation
    end