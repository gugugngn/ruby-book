
UNITS = { m: 1.0, ft: 3.28, in: 39.37}
def convert_length(length, from: :m, to: :m)
    (length / UNITS[from] * UNITS[to]).round(2)
end

# 例）convert_length(1, from: :m, to: :in)を受け取ると
# 計算式は(1 / 1.0 * 39.37).round(2)となり結果は 39.37 になる。
# (length, from:, to:)でもOK.(:m)はデフォルト値にすぎない。
# UNITSは定数化している
