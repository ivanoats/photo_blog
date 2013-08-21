CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: "AKIAIXPEKFLWGUORYTEQ",
    aws_secret_access_key: "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"
  }
  config.fog_directory = ENV['AWS_S3_BUCKET']
end
