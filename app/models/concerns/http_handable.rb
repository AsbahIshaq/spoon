module HttpHandable
  def handle_http_exceptions(error_class, error_message = '')
    if error_class == 'HTTP::ConnectionError'
      error_message = "#{error_message} Connection could not be made"
    elsif error_class == 'Errno::ECONNREFUSED'
      error_message = "#{error_message} Web application is not running.\n"
    elsif ['Errno::ECONNRESET', 'Errno::EINVAL', 'Timeout::Error'].include? error_class
      error_message = "#{error_message} Exception occured: exception class is #{error_class} exception message is #{error.message.to_s}"
    elsif error_class == 'Contentful::Unauthorized'
      error_message = "#{error_message} User not authorized"
    else
      error_message = "#{error_message} Unknown exception while invoking this request"
    end
    error_message
  end
end