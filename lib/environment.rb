require "environment/version"

module Environment

  class Plugin < Vagrant.plugin('2')
    name 'Environment'

    command 'dump-environment' do
      require 'environment/dump-environment'
      DumpEnvironment
    end

    command 'dump-machines' do
      require 'environment/dump-machines'
      DumpMachines
    end

  end

end
