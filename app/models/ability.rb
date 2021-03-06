class Ability
  include Hydra::Ability
  
  include CurationConcerns::Ability
  include Sufia::Ability

  self.ability_logic += [:everyone_can_create_curation_concerns]

  # Define any customized permissions here.
  def custom_permissions
    
    # Admin permissions
    # 
    if current_user.admin?
      # Limits deleting objects to a the admin user
      #can [:destroy], ActiveFedora::Base
      
      # Allow admins to add manage admin group permissions
      can [:create, :show, :add_user, :remove_user, :index, :edit, :update, :destroy], Role
    end

    # Limits creating new objects to a specific group
    #
    # if user_groups.include? 'special_group'
    #   can [:create], ActiveFedora::Base
    # end
  
  end


end
