class ValueObject < DomainModel
  class << self
    def entity?
      false
    end
  
    def value?
      true
    end
  
    def root?
      false
    end
  end
end
