require './SinhVien.rb'
require './Khoa.rb'
require './SinhVienTaiChuc.rb'


chon = -1
while chon != 0 do
      puts "1. Them sinh vien"
      puts "2. Hien thi sanh sach sinh vien"
      puts "3. Tim sinh vien co dau vao cao nhat"
      puts "0. Thoat"
      print "Chon: "
      chon = gets.to_i
      case chon
      when 1 
            puts "1. Sinh vien chinh quy"
            puts "2. Sinh vien lien ket dao tao"
            print "Chon loai sinh vien: "
            loaiSV = gets.to_i

            case loaiSV
                  when 1      
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
                        khoa.themSV(SinhVien.new(maSinhVien, hoTen, ngaySinh, namVaoHoc, kyHoc, diemDauVao, diemToan, diemLy, diemHoa))
                  else
                        print "Nhap ma sinh vien: "
                        maSinhVien = gets.chomp
                        print "Nhap ho va ten: "
                        hoTen = gets.chomp
                        print "Nhap ngay thang nam sinh: "
                        ngaySinh = gets.chomp
                        print "Nhap nam vao hoc: "
                        namVaoHoc = gets.chomp
                        print "Nhap ky hoc: "
                        kyHoc =gets.chomp
                        print "Nhap diem dau vao: "
                        @diemDauVao = gets.to_i
                        print "Nhap danh sach ket qua: "
                        print "Nhap diem toan: "
                        diemToan = gets.to_i
                        print "Nhap diem ly: "
                        diemLy = gets.to_i
                        print "Nhap diem hoa: "
                        diemHoa = gets.to_i
                        print "Noi lien ket dao tao: "
                        lienKetDaoTao = gets
                        khoa.themSV(SinhVienTaiChuc.new(maSinhVien, hoTen,  ngaySinh, namVaoHoc, kyHoc, diemDauVao, diemToan, diemLy, diemHoa, lienKetDaoTao))
                  end
      when 2
            khoa.hienThiDanhSach
            system("pause")
            system("cls")
      when 0
            puts "Da thoat!"
      else
            puts "Khong hop le"
      end
end
