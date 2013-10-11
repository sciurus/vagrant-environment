require 'pp'

module Environment

  class Command < Vagrant.plugin(2, :command)
    def execute
      pp @env
    end
  end

end
