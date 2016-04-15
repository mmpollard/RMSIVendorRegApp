class Form < ActiveRecord::Base
    attr_accessor :kitchen_contract, :facility_op_form, :DD214
    validates :name, :email, :user, presence: true
    has_attached_file :DD214
    has_attached_file :kitchen_contract
    has_attached_file :facility_op_form
    validates_attachment_content_type :kitchen_contract, content_type: ['application/pdf']
    validates_attachment_content_type :facility_op_form, content_type: ['application/pdf']
    validates_attachment_content_type :DD214, content_type: ['application/pdf']


end
