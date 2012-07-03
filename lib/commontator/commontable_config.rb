module Commontator
  class CommontableConfig
    Commontator::COMMONTABLE_ATTRIBUTES.keys.each do |attribute|
      cattr_accessor attribute
    end
  
    def initialize(options = {})
      Commontator::COMMONTABLE_ATTRIBUTES.keys.each do |attribute|
        self.send attribute.to_s + '=', options[attribute] || Commontator.send(attribute)
      end
    end
  end
end
