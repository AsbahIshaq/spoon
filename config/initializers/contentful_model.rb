ContentfulModel.configure do |config|
  config.access_token = ENV['CONTENTFUL_ACCESS_TOKEN'] # Required
  # config.preview_access_token = "your preview token in here" # Optional - required if you want to use the preview API
  # config.management_token = "your management token in here" # Optional - required if you want to update or create content
  config.space = ENV['CONTENTFUL_SPACE_ID'] # Required
  config.environment = "master" # Optional - defaults to 'master'
  config.default_locale = "en-US" # Optional - defaults to 'en-US'
  config.options = { # Optional
    # Extra options to send to the Contentful::Client and Contentful::Management::Client
    # See https://github.com/contentful/contentful.rb#configuration

    # Optional:
    # Use `delivery_api` and `management_api` keys to limit to what API the settings
    # will apply. Useful because Delivery API is usually visitor facing, while Management
    # is used in background tasks that can run much longer. For example:
    # delivery_api: {
    #   timeout_read: 6
    # },
    # management_api: {
    #   timeout_read: 100
    # }
  }
end