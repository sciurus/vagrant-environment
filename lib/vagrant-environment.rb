require "vagrant-environment/version"

module Environment

  class Plugin < Vagrant.plugin('2')
    name 'Environment'

    command 'dump-environment' do
      require 'vagrant-environment/dump-environment'
      DumpEnvironment
    end

    command 'dump-machine' do
      require 'vagrant-environment/dump-machine'
      DumpMachine
    end

  end

end
