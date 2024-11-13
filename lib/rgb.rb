#  to_hexのテストのためのコード
def to_hex(r, g, b)
    [r, g, b].sum('#') do |n|
        n.to_s(16).rjust(2, '0')
    end
end

def to_ints(hex)
    # ＃で始まる文字列を受け取ったら2文字ずつに分割
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r, g, b].map do |s|
        s.hex   # .hex メソッドを使って16進数から整数に変換
    end
end
