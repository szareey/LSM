require 'Base64'

class Answer < ActiveRecord::Base

  # before_validation :set_image

  has_attached_file :final_answer_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  do_not_validate_attachment_file_type :final_answer_img

  # validates_attachment_content_type :final_answer_img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  # validates_attachment_file_name :final_answer_img, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

  belongs_to :student, class_name: 'Student', foreign_key: 'user_id'
  belongs_to :question


  # def set_image
    
  # end


end
