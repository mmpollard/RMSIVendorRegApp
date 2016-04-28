class Form < ActiveRecord::Base
    attr_accessor :kitchen_contract, :facility_op_form, :DD214, :formtype
    
    has_attached_file :DD214
    has_attached_file :kitchen_contract
    has_attached_file :facility_op_form
    
    #formtype currently not being passed in...
    validates :name, :email, :user, :formtype, presence: true
    
    validate :kitchen_contract_exists, :dd214_exists, :facility_op_form_exists, if: :foodform?
    
    def foodform?
      type = @formtype
      if type == 'food'
        true
      else
        false
      end
    end
    def initialize(params = {})
      @kitchen_contract = params.delete(:kitchen_contract)
      @facility_op_form = params.delete(:facility_op_form)
      @DD214 = params.delete(:DD214)
      @formtype = params.delete(:formtype)
      super
        if @kitchen_contract
          self.kc_filename = sanitize_filename(@kitchen_contract.original_filename)
          self.kc_content_type = @kitchen_contract.content_type
          self.kc_file_contents = @kitchen_contract.read
        end
        if @DD214
          self.dd_filename = sanitize_filename(@DD214.original_filename)
          self.dd_content_type = @DD214.content_type
          self.dd_file_contents = @DD214.read
        end
        if @facility_op_form
          self.ff_filename = sanitize_filename(@facility_op_form.original_filename)
          self.ff_content_type = @facility_op_form.content_type
          self.ff_file_contents = @facility_op_form.read
        end
    end
    private
      def sanitize_filename(filename)
        # Get only the filename, not the whole path (for IE)
        # Thanks to this article I just found for the tip: http://mattberther.com/2007/10/19/uploading-files-to-a-database-using-rails
        return File.basename(filename)
      end

    def kitchen_contract_exists
      if @kitchen_contract.nil?
        errors.add(:kitchen_contract, 'can\'t be blank')
      end
    end
    
    def facility_op_form_exists
      if @facility_op_form.nil?
        errors.add(:facility_op_form, 'can\'t be blank')
      end
    end
    
    def dd214_exists
      if @DD214.nil?
        errors.add(:DD214, 'can\'t be blank')
      end
    end
end
