class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick

  # Que tipo de strorage usará este uploader

    # Como y donde guardar el archivo ...
  def store_dir
		"selfie_app/db/upload_photos/:id/"
  end

  # Versiones del archivo ...
  storage :file
  process resize_to_fit: [300, 300]

  #Que extensiones vas a aceptar
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
