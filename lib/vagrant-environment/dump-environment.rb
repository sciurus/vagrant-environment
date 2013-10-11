require 'yaml'

module Environment

  class DumpEnvironment < Vagrant.plugin(2, :command)
    def execute
      @env.ui.info( YAML.dump(@env) )
    end
  end

end
