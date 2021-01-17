class Recipe < ContentfulModel::Base
  self.content_type_id = 'recipe'

  def self.load_page(page_num, limit_per_page)
  	begin
      self.paginate(page_num.to_i, limit_per_page.to_i, 'sys.updatedAt', {}).load
    rescue Exception => error
      binding.pry
      error_class = error.class.to_s
      if error.class.to_s == 'HTTP::ConnectionError'
        puts "Connection could not be made"
      elsif error.class.to_s == "Errno::ECONNREFUSED"
        puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET", "Errno::EINVAL", "Timeout::Error"].include? error.class.to_s
        puts "Exception occured: exception class is " + error.class.to_s + " exception message is " + error.message.to_s
      elsif error_class == 'Contentful::Unauthorized'
        puts error.message || 'User not authorized'
      else
        puts "Unknown exception while invoking this request " + error.class.to_s + "***" + error.message.to_s
      end
      return false
    end
  end
end