require './SinhVien'

class SinhVienTaiChuc < SinhVien
      attr_accessor :lienKetDaoTao

      def initialize(maSinhVien, hoTen,  ngaySinh, namVaoHoc, kyHoc, diemDauVao, diemToan, diemLy, diemHoa, lienKetDaoTao)
            super(maSinhVien, hoTen, ngaySinh, namVaoHoc, kyHoc, diemDauVao, diemToan, diemLy, diemHoa)
            @lienKetDaoTao = lienKetDaoTao
      end

      def show
            super
            puts "Noi lien ket dao tao: #{@lienKetDaoTao}"
      end
end