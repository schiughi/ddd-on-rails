class Entity < DomainModel
  class << self
    def entity?
      true
    end
  
    def value?
      false
    end
  
    def root?
      false
    end
  end
end
