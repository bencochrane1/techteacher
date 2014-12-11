CarrierWave.configure do |config|
  config.storage :fog

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAI4LRMHYPFY4UAU4A',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region => "ap-southeast-1"
  }
  config.fog_directory  = 'techteacher'                          # required
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end