CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'xxx', #here                       # required
    aws_secret_access_key: 'yyy', #here                       # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'coffeewaffle'                          # required
  config.fog_public     = true                                        # optional, defaults to true
end
