CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAI4LRMHYPFY4UAU4A',                        # required
    :aws_secret_access_key  => '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',                        # required
  #   :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
  #   :host                   => 's3.example.com',             # optional, defaults to nil
  #   :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  # }
  config.fog_directory  = 'techteacher'                          # required
  # config.fog_public     = false                                        # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end