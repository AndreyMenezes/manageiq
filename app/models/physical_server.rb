class PhysicalServer < ApplicationRecord
  include NewWithTypeStiMixin

  acts_as_miq_taggable
  belongs_to :ext_management_system, :foreign_key => :ems_id, :class_name => "ManageIQ::Providers::PhysicalInfraManager"

  has_one :computer_system, :as => :managed_entity, :dependent => :destroy
  has_one :hardware, :through => :computer_system

  has_one :host, :inverse_of => :physical_server

  def name_with_details
    details % {
      :name => name,
    }
  end


  def is_refreshable?
    refreshable_status[:show]
  end

  def is_refreshable_now?
    refreshable_status[:enabled]
  end

  def is_refreshable_now_error_message
    refreshable_status[:message]
  end

  def is_available?(address)
    #TODO (walteraa) remove bypass
    true
  end

  def smart?
    #TODO (walteraa) remove bypass
    true
  end


end
