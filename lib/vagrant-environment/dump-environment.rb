require 'yaml'

module VagrantEnvironment

  class DumpEnvironment < Vagrant.plugin(2, :command)

    def execute
      opts = OptionParser.new do |o|
        o.banner = 'Usage: vagrant dump-environment'
      end
      argv = parse_options(opts)
      return if !argv

      @env.ui.info( YAML.dump(@env) )
    end

  end

end
