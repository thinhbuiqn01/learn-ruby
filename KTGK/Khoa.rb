class Khoa
      attr_accessor :tenKhoa, :danhSachSV

      def initialize()
            @tenKhoa = tenKhoa
            @danhSachSV = []
      end

      def themSV(sinhVien)
            @danhSachSV << sinhVien
      end

      def hienThiDanhSach
            @danhSachSV.each {|sv|
                  puts "----------------"
                  sv.show
                  puts "----------------"
            }
      end
end