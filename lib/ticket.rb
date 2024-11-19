class Ticket
    attr_reader :fare, :stamped_at    # 外部から取得できるようにするメソッド
    def initialize(fare)
        @fare = fare
    end

    def stamp(name)
        @stamped_at = name
    end
end