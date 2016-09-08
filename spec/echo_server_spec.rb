require 'echo_server'

RSpec.describe EchoServer do
  describe "test input" do
    it 'read and displays until it reads exit' do
        ui = StringIO.new("a\nb\nexit\n")
        ui2 = StringIO.new
        server = EchoServer.new
        server.set_reader(ui)
        server.set_writer(ui2)

        server.read_and_display_stream

        expect(ui2.string).to eq("a\nb\n")
    end

    it 'reads things' do
        ui = StringIO.new("test")
        server = EchoServer.new
        server.set_reader(ui)

        expect(server.read).to eq("test")
    end
  end

  describe "test output" do
      it 'prints things' do
        ui = StringIO.new
        server = EchoServer.new
        server.set_writer(ui)

        server.write("test output")

        expect(ui.string).to eq("test output\n")
    end
  end
end
