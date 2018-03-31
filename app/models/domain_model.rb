class DomainModel
  class << self
    def entity?
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  
    def value?
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  
    def root?
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
