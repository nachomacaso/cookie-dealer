class Picture < ApplicationRecord
  belongs_to :cookie, polymorphic: true, optional: true

  has_attached_file :image,
                    styles: {
                      thumb: '100x100#',
                      small: '150x150>',
                      medium: '500x500!'
                    }

  validates_attachment_content_type :image,
                                    content_type: ['image/jpg',
                                                   'image/jpeg',
                                                   'image/png',
                                                   'image/gif']
end
