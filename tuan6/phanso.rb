
class PhanSo
    attr_accessor :tu_262, :mau_262
    def initialize(tu_262, mau_262)
        @tu_262 = tu_262
        @mau_262 = mau_262
    end
    def UCLN( a, b)
        if ( b == 0 )
            return a
        end
        return UCLN( b, a % b )
    end
    def RutGon( a, b)
        ucln = UCLN(a,b)
        if (ucln == 0)
            return 0
        end
        a = a / ucln
        b = b / ucln
        if(a==0 or b==1)
            return "#{a}"
        end
        return "#{a}/#{b}"
    end   

    def + (object)
        tu_262 = self.tu_262 * object.mau_262 + object.tu_262 * self.mau_262
        mau_262 = self.mau_262 * object.mau_262
        return RutGon(tu_262,mau_262)

    end

    def - (object)
        tu_262 = self.tu_262 * object.mau_262 - object.tu_262 * self.mau_262
        mau_262 = self.mau_262 * object.mau_262
        return RutGon(tu_262,mau_262)
    end

    def * (object)
        tu_262 = self.tu_262 * object.tu_262
        mau_262 = self.mau_262 * object.mau_262
        return RutGon(tu_262,mau_262)
    end

    def / (object)
        tu_262 = self.tu_262 * object.mau_262
        mau_262 = self.mau_262 * object.tu_262

        return RutGon(tu_262,mau_262)
    end
    
end

def Cong(ps1, ps2)
    tu_262 = ps1.tu_262 * ps2.mau_262 + ps2.tu_262 * ps1.mau_262
    mau_262 = ps1.mau_262 * ps2.mau_262
    ps = PhanSo.new(tu_262, mau_262)
    return ps
end

def Tru(ps1, ps2)
    tu_262 = ps1.tu_262 * ps2.mau_262 - ps2.tu_262 * ps1.mau_262
    mau_262 = ps1.mau_262 * ps2.mau_262
    ps = PhanSo.new(tu_262, mau_262)
    return ps
end

def Nhan(ps1, ps2)
    tu_262 = ps1.tu_262 * ps2.tu_262
    mau_262 = ps1.mau_262 * ps2.mau_262
    ps = PhanSo.new(tu_262, mau_262)
    return ps
end

def Chia(ps1, ps2)
    tu_262 = ps1.tu_262 * ps2.mau_262
    mau_262 = ps1.mau_262 * ps2.tu_262
    ps = PhanSo.new(tu_262, mau_262)
    return ps
end

puts "Nhap phan so 1: "
print "Nhap tu so 1: "
tu1_262 = gets.to_i
mau1_262 = 0
loop do
    print "Nhap mau so 1: "
    mau1_262 = gets.to_i
    if mau1_262 != 0
        break
    end
end
ps1 = PhanSo.new(tu1_262, mau1_262)

puts "Nhap phan so 2: "
print "Nhap tu so 2: "
tu2_262 = gets.to_i
mau2_262 = 0
loop do
    print "Nhap mau so 2: "
    mau2_262 = gets.to_i
    if mau2_262 != 0
        break
    end
end

ps2 = PhanSo.new(tu2_262, mau2_262)

tong = Cong(ps1, ps2)
hieu = Tru(ps1, ps2)
tich = Nhan(ps1, ps2)
thuong = Chia(ps1, ps2)

puts "Bai 1:" 
puts "Tong 2 phan so: #{ps1.RutGon(tong.tu_262,tong.mau_262)}"
puts "Hieu 2 phan so: #{ps1.RutGon(hieu.tu_262,hieu.mau_262)}"
puts "Tich 2 phan so: #{ps1.RutGon(tich.tu_262,tich.mau_262)}"
puts "Thuong 2 phan so: #{ps1.RutGon(thuong.tu_262,thuong.mau_262)}"

puts "Bai 2:"
puts "Tong 2 phan so: #{(ps1+ps2)}"
puts "Hieu 2 phan so: #{(ps1-ps2)}"
puts "Tich 2 phan so: #{(ps1*ps2)}"
puts "Thuong 2 phan so: #{(ps1/ps2)}"