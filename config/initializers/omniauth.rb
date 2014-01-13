OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '1448788305340443', '8550dc49b14f608183120a536c0a8860'
  #provider :facebook, ENV['1448788305340443'],ENV['8550dc49b14f608183120a536c0a8860']
end
