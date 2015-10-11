require "yaml"

module Send
  def self.perform(array)
    config = YAML.load_file("config.yml")
    socket = TCPSocket.new(config["ip"], config["port"])
    command = array.pack('C*')
    socket.write(command)
    socket.close
  end
end
