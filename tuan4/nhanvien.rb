class CanBo
      @ho_ten_262
      @tuoi_262
      @gioi_tinh_262
      @dia_chi_262
      
      def initialize (ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262)
            @ho_ten_262 = ho_ten_262
            @tuoi_262 = tuoi_262
            @gioi_tinh_262 = gioi_tinh_262
            @dia_chi_262 = dia_chi_262
      end

      attr_accessor :ho_ten_262, :tuoi_262, :giioi_tinh_262, :dia_chi_262

      def inputInformation
            @ho_ten_262 = gets
            @tuoi_262 = gets
            @giioi_tinh_262 = gets
            @dia_chi_262 = gets
      end

      def showInformation
            puts "Ho ten: #{@ho_ten_262} \n Tuoi: #{@tuoi_262} \n Gioi tinh: #{@gioi_tinh_262} \n Dia chi: #{@dia_chi_262} \n"
      end
end 

class CongNhan < CanBo
      $cap_bac_262
      
      attr_accessor :cap_bac_262

      def initialize(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262,cap_bac_262)
            super(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262)
            $cap_bac_262 = cap_bac_262
      end
      
      def inputInformation
            super
            $cap_bac_262 = gets
      end

      def showInformation
            super
            puts "\nCap bac: #{@cap_bac_262}"
      end
end
=begin
      Ky su
=end
class KySu< CanBo
      $nganh_dao_tao_262
      
      attr_accessor :nganh_dao_tao_262

      def initialize(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262,nganh_dao_tao_262)
            super(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262)
            $nganh_dao_tao_262 = nganh_dao_tao_262
      end

      def inputInformation
            super
            $nganh_dao_tao_262 = gets
      end
      
      def showInformation
            super
            puts "\nCap bac: #{@nganh_dao_tao_262}"
      end
end

class NhanVien< CanBo
      $cong_viec_262
      
      attr_accessor :cong_viec_262

      def initialize(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262,cong_viec_262)
            super(ho_ten_262, tuoi_262, gioi_tinh_262, dia_chi_262)
            @cong_viec_262 = cong_viec_262
      end

      def showInformation
            super
            puts "\nCap bac: #{@cong_viec_262}"
      end
end

class QLCB
      @list_can_bo_262 = Array.new
      puts "Nhap so can bo"
      @so_can_bo_262 = gets
      
      for i in 1..@so_can_bo_262.to_i
            puts "Chọn loại cán bộ (1 - Cong Nhan, 2 - Ky su, 3 - Nhan Vien): "
            @choose_262 = gets
            case @choose_262
            when 1 
                  @cong_nhan = CongNhan.new("Bui", 22, "nam", "Quang Ngai", 3) 
                  @list_can_bo_262.push(@cong_nhan)                                        
            when 2
                  @ky_su_262 = KySu.new("Viet", 22, "nam", "Quang Ngai", "Cong nghe thong tin") 
                  @list_can_bo_262.push(@ky_su_262)                                        
            when 3 
                  @nhan_vien = NhanVien.new("Thinh", 22, "nam", "Quang Ngai", "Coder") 
                  @list_can_bo_262.push(@cong_nhan)                                        
            else
                  "You gave me #{@choose_262} -- I have no idea what to do with that."
            end 
      end

      for i in 0..(@list_can_bo_262.length-1)
            puts "- Can bo #{i+1}"
            puts @list_can_bo_262[i].showInformation
      end
end
