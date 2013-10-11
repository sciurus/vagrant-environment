require 'yaml'

module VagrantEnvironment

  class DumpMachine < Vagrant.plugin(2, :command)
    def execute
      opts = OptionParser.new do |o|
        o.banner = 'Usage: vagrant dump-machine [vm-name]'
      end
      argv = parse_options(opts)
      return if !argv

      with_target_vms(argv) do |machine|
        @env.ui.info( YAML.dump(machine) )
      end
    end
  end

end
