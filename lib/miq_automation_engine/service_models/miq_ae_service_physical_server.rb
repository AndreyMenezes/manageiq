module MiqAeMethodService
  class MiqAeServicePhysicalServer < MiqAeServiceModelBase
  	expose :ext_management_system, :association => true
  	expose :physical_servers,      :association => true

  	def turn_on_loc_led
  		object_send(:turn_on_loc_led)
  	end

  	def turn_off_loc_led
  		object_send(:turn_off_loc_led)
  	end

  	def power_on
  		object_send(:power_on)
  	end

  	def power_off
  		object_send(:power_off)
    end

   end
end