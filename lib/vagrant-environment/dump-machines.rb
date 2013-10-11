require 'yaml'

module Environment

  class DumpMachines < Vagrant.plugin(2, :command)
    def execute
      with_target_vms do |machine|
        @env.ui.info( YAML.dump(machine) )
      end
    end
  end

end
