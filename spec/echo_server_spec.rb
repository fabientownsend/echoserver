require 'spec_helper'
require 'echo_server'

RSpec.describe EchoServer do
  before(:each) do
    @input = StringIO.new("a\nb\nexit\n")
    @output  = StringIO.new
    @server = EchoServer.new(@input, @output)
  end

  it "reads first input" do
    expect(@server.read).to eq("a\n")
  end

  it "prints last input" do
    @server.write("test output")

    expect(@output.string).to eq("test output\n")
  end

  it "read and displays input until it reads exit" do
    @server.read_and_display_stream

    expect(@output.string).to eq("a\nb\n")
  end
end
