class Recipe < ContentfulModel::Base
  extend HttpHandable
  self.content_type_id = 'recipe'

  def self.load_page(page_num, limit_per_page)
  	begin
      self.paginate(page_num.to_i, limit_per_page.to_i, 'sys.updatedAt', {}).load
    rescue Exception => error
      error_class   = error.class.to_s
      error_message = handle_http_exceptions(error_class, error.message)
      Rails.logger.error error_class + " --- " + error_message
      false
    end
  end
end