class Picture < ApplicationRecord
  belongs_to :cookie, polymorphic: true, optional: true

  has_attached_file :image,
                    styles: {
                      thumb: '100x100#',
                      small: '150x150>',
                      medium: '500x500!'
                    },
                    storage: :s3,
                    s3_credentials: Proc.new { |a| a.instance.s3_credentials }

  validates_attachment_content_type :image,
                                    content_type: ['image/jpg',
                                                   'image/jpeg',
                                                   'image/png',
                                                   'image/gif']

  def s3_credentials
    { bucket: ENV['S3_BUCKET_NAME'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'] }
  end
end
