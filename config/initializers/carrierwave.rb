CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider => 'Google',
      :google_storage_access_key_id => 'GOOGTWWFPFRTV4PCW2RM',
      :google_storage_secret_access_key => 'bSKrEJ4X2HSaihZ0Kygp5eXUQ3QiG4KdxXi3OgWT'
  }
  config.fog_directory = 'music_collection'
end