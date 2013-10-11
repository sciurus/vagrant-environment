require "environment/version"

module Environment

  class Plugin < Vagrant.plugin('2')
    name 'Environment'
    command 'environment' do
      require 'environment/command'
      Command
    end
  end

end
