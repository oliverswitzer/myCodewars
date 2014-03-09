class Hash 
  def initialize
    methods = self.keys

    methods.each do |method|
      attr_reader method.to_sym
    end

    methods.each do |method|
      define_method(method) do 
        return self[method]
      end
    end
  end
end

hash = {"LOLOLOLOLOLOL" => "Poop", "b" => "Hello"}
hash.LOLOLOLOLOLOL