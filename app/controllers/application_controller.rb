class ApplicationController < ActionController::Base
  def render_404
    render_error_page('404', :not_found)
  end

  def render_server_error
    render_error_page('500', :not_found)
  end

  def render_error_page(file, status)
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/#{file}.html", layout: false, status: status }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
end
