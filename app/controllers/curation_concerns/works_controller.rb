# Generated via
#  `rails generate curation_concerns:work Work`

module CurationConcerns
  class WorksController < ApplicationController
    include CurationConcerns::CurationConcernController
    # Adds Sufia behaviors to the controller.
    include Sufia::WorksControllerBehavior

    self.curation_concern_type = Work
    
    def new
      logger.debug "***************************************"
      logger.debug "u0570163"
      logger.debug "***************************************"
      logger.debug instance_variables_hash
      curation_concern.depositor = current_user.user_key
      super
    end 

    private

    def instance_variables_hash
      Hash[instance_variables.map { |name| [name, instance_variable_get(name)] }]
    end

  end
end
