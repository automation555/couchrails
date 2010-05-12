module CouchRails
  module AbstractClass
    extend ActiveSupport::Concern

    def inherited(subclass)
      subclass.abstract_class = false
    end

    module ClassMethods
      attr_accessor :abstract_class

      def abstract_class?
        abstract_class == true
      end
    end
  end
end