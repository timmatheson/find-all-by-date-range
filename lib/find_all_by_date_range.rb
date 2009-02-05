module FindAllByDateRange
  class ActiveRecord::Base
    def self.find_all_by_date_range(from,to,options={})
      options[:use].blank? ? use_column = :created_at : use_column = options.delete(:use).to_sym
      find(:all, (options || {}).merge(:conditions => {use_column => from.to_date.to_s(:db)..to.to_date.to_s(:db)}))
    end
  end
end

ActiveRecord::Base.send(:include, FindAllByDateRange)