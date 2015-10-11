$LOAD_PATH.unshift File.expand_path("../..", __FILE__)
require "lib/send"

describe "send" do
  it "writes to socket" do
    expect_any_instance_of(TCPSocket).to receive(:write)
    Send.perform([])
  end
end
