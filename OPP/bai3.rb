class Candidate
      attr_accessor :id, :name, :address, :priority
      def initialize()
          print "Nhap ID: "
          @id = gets
          print "Nhap name:"
          @name = gets
          print "Nhap address: "
          @address = gets
          print "Nhap priority: "
          @priority = gets.to_i
      end
  
      def toString
          return "id=#{@id}, name= #{@name}, address=#{@address}, priority=#{priority}"
      end
  end
  
  class CandidateA < Candidate
      attr_reader :MON_TOAN, :MON_LY, :MON_HOA
      
      def initialize()
          super
          @MON_TOAN = "Toan"
          @MON_LY = "Ly"
          @MON_HOA = "Hoa"
      end
      
      def toString
          return "CandidateA{#{super}, Subject: #{@MON_TOAN} - #{@MON_LY} - #{@MON_HOA}}"
      end
  end
  
  class CandidateB < Candidate
      attr_reader :MON_TOAN, :MON_HOA, :MON_SINH
      
      def initialize()
          super
          @MON_TOAN = "Toan"
          @MON_HOA = "Hoa"
          @MON_SINH = "Sinh"
      end
      
      def toString
          return "CandidateB{#{super}, Subject: #{@MON_TOAN} - #{@MON_HOA} - #{@MON_SINH}}"
      end
  end
  
  class CandidateC < Candidate
      attr_reader :MON_VAN, :MON_SU, :MON_DIA
      
      def initialize()
          super
          @MON_VAN = "Van"
          @MON_SU = "Su"
          @MON_DIA = "Dia"
      end
      
      def toString
          return "CandidateC{#{super}, Subject: #{@MON_VAN} - #{@MON_SU} - #{@MON_DIA}}"
      end
  end
  
  class ManagerCandidate 
      attr_accessor :candidates
      def initialize()
          @candidates = []
      end
      
      def add(candidate)
          @candidates << candidate
      end
  
      def searchById(id)
          return @candidates.find{|item| item.id == id}
      end
  
      def showInfor
          @candidates.each{ |candidate| puts candidate.toString}
      end
  end
  
  managerCandidate  = ManagerCandidate.new
  while true
      puts "Application Manager Candidate"
      puts "Nhap 1: To insert candidate"
      puts "Nhap 2: To show information of candidate: "
      puts "Nhap 3: To search candidate by id"
      puts "Nhap 4: To exit:"
      print "Nhap: "
      line218  = gets.to_i
      case line218
          when 1
              puts "Nhap 1: to insert Candidate A"
              puts "Nhap 2: to insert Candidate B"
              puts "Nhap 3: to insert Candidate C"
              print "Nhap: "
              type = gets.to_i
              case type
                  when 1
                      candidateA = CandidateA.new
                      managerCandidate.add(candidateA)
                      puts candidateA.toString
                  when 2
                      candidateB = CandidateB.new
                      managerCandidate.add(candidateB)
                      puts candidateB.toString
                  when 3
                      candidateC = CandidateC.new
                      managerCandidate.add(candidateC)
                      puts candidateC.toString
                  else
                      puts "Invalid"
              end
          when 2
              managerCandidate.showInfor
          when 3
              print "Nhap id to find: "
              id = gets
              candidate = managerCandidate.searchById(id)
              if candidate.nil?
                  puts "Not found"
              else
                  puts candidate.toString
              end
          when 4 
              break
          else
              puts "Invalid"
      end
  end