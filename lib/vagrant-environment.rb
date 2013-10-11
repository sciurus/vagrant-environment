require "vagrant-environment/version"

module Environment

  class Plugin < Vagrant.plugin('2')
    name 'Environment'

    command 'dump-environment' do
      require 'vagrant-environment/dump-environment'
      DumpEnvironment
    end

    command 'dump-machines' do
      require 'vagrant-environment/dump-machines'
      DumpMachines
    end

  end

end
