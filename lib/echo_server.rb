class EchoServer
  def initialize(input, output)
    @input = input
    @output = output
  end

  def read_and_display_stream
    while "exit\n" != text_read = read do
      write(text_read)
    end
  end

  def read
    @input.gets
  end

  def write(txt)
    @output.puts(txt)
  end
end
