module Faker
  class Company < Base
    flexible :company

    class << self
      # def name
      #   parse('company.name')
      # end
      
      def name
        fetch('company.name')
      end
    
      def suffix
        fetch('company.suffix')
      end
      
      # Generate a buzzword-laden catch phrase.
      def catch_phrase
        translate('faker.company.buzzwords').collect {|list| list.sample }.join(' ')
      end
      
      # When a straight answer won't do, BS to the rescue!
      def bs
        translate('faker.company.bs').collect {|list| list.sample }.join(' ')
      end

      def duns_number
        ('%09d' % rand(10 ** 9)).gsub(/(\d\d)(\d\d\d)(\d\d\d\d)/, '\\1-\\2-\\3')
      end
    end
    
  end
end
