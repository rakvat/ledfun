$LOAD_PATH.unshift File.expand_path("../..", __FILE__)
require "lib/send"

describe "send" do
  it "writes to socket" do
    tcpsocket = double(TCPSocket)
    allow(TCPSocket).to receive(:new) { tcpsocket }
    allow(tcpsocket).to receive(:write)
    allow(tcpsocket).to receive(:close)
    expect(tcpsocket).to receive(:write)
    Send.perform([])
  end
end
