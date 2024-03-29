# encoding: utf-8

class CoverImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage Rails.env.production? ? :fog : :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [720, 570]

  version :medium do
    process :resize_to_fill => [260, 200]
  end

  version :list do
    process :resize_to_fill => [260, 170]
  end

  version :thumb do
    process :resize_to_fill => [90, 90]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
