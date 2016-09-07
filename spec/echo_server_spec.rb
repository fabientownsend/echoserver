require 'echo_server'
require 'fake_cli'

RSpec.describe EchoServer do
  before do
    cli = FakeCli.new
    @echo_server = EchoServer.new(cli)
  end

  it "should return what is displayed in the cli" do
    $stdin = StringIO.new("hello")
    expect(@echo_server.read).to eq "hello"
  end

  it "should return what was write in the cli" do
    @echo_server.write("hello")
    expect($stdout.string).to eq "hello\n"
  end
end
