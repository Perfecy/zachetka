class Fest < ApplicationRecord

  # Paperclip.options[:content_type_mappings] = { jpg: "image/jpeg" }

  # has_attached_file :image,
  #                   styles: {
  #                       thumb: ["300x300#", :jpeg],
  #                       original: [:jpeg]
  #                   },
  #                   convert_options: {
  #                       thumb: "-quality 70 -strip",
  #                       original: "-quality 90"
  #                   }
  # validates_attachment :image,
  #                      content_type: {
  #                          content_type: /\Aimage\/.*\z/ },
  #                      size: { less_than: 5.megabyte }
 end
