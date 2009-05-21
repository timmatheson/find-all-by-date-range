module FindAllByDateRange
  class ActiveRecord::Base
    # Finds a set of records within a date range
    # Example:
    # User.find_all_by_date_range(Time.now-1.day, Time.now, :use => "signed_up_at")
    def self.find_all_by_date_range(from,to,options={})#:doc
      options[:use].blank? ? use_column = :created_at : use_column = options.delete(:use).to_sym
      find(:all, (options || {}).merge(:conditions => {use_column => from.to_date.to_s(:db)..to.to_date.to_s(:db)}))
    end
  end
end

ActiveRecord::Base.send(:include, FindAllByDateRange)