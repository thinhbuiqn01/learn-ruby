class SinhVien
      attr_accessor :maSinhVien, :hoTen, :ngaySinh, :namVaoHoc, :kyHoc, :diemDauVao, :diemToan, :diemLy, :diemHoa

      def initialize()
            @maSinhVien = maSinhVien
            @hoTen = hoTen
            @ngaySinh = ngaySinh
            @namVaoHoc = namVaoHoc
            @kyHoc = kyHoc
            @diemDauVao = diemDauVao
            @diemToan = diemToan
            @diemLy = diemLy
            @diemHoa = diemHoa
      end

      def diemTrungBinh
            diemTrungBinh = (@diemToan + @diemHoa + @diemLy)/3.0
            return "Diem trung binh hoc ky #{@kyHoc} cua sinh vien #{@hoTen} la : #{diemTrungBinh}"
      end

      def input
            print "Nhap ma sinh vien: "
            maSinhVien = gets
            print "Nhap ho va ten: "
            hoTen = gets
            print "Nhap ngay thang nam sinh: "
            ngaySinh = gets
            print "Nhap nam vao hoc: "
            namVaoHoc = gets
            print "Nhap ky hoc: "
            kyHoc =gets
            print "Nhap diem dau vao: "
            diemDauVao = gets
            print "Nhap danh sach ket qua: "
            print "Nhap diem toan: "
            diemToan = gets
            print "Nhap diem ly: "
            diemLy = gets
            print "Nhap diem hoa: "
            diemHoa = gets
      end

      def show
            print "Ma sinh vien: #{@maSinhVien}"
            print "Ho ten sinh vien: #{@hoTen}"
            print "Ngay thang nam sinh: #{@ngaySinh}"
            print "Nam vao hoc: #{@namVao}"
            print "Hoc ky: #{@kyHoc}"
            print "Diem dau vao: #{@diemDauVao}"
            print "Ket qua hoc tap "
            print "\t Diem toan: #{@diemToan}"
            print "\t Diem ly: #{@diemLy}"
            print "\t Diem hoa: #{@diemHoa}"
      end
end
