class User
    attr_accessor :name    #Userクラスのメソッドを外部で使用できるようにするための記述
    def initialize(name)
        @name = name
    end


    def rename_to_carol
        @name = 'Carol'
    end

    def rename_to_dave
        @name = 'Dave'
    end
end

def rename_to_bob
    self.name = 'Bob'
end

user = User.new('Alice')
puts user.rename_to_bob
puts user.name