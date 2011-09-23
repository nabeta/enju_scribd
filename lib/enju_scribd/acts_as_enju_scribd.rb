module EnjuScribd
  module ActsAsMethods
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def enju_scribd
        include InstanceMethods
      end
    end

    module InstanceMethods
      attr_accessor :post_to_scribd

      def scribdable?
        ScribdFu::ContentTypes.include?(get_content_type) && ipaper_id.blank? && post_to_scribd
      end
    end
  end
end

ActiveRecord::Base.send :include, EnjuScribd::ActsAsMethods
