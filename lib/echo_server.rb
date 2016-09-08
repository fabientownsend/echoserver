#todo merge interface
#read_and_display_stream remove duplication

class EchoServer
  def set_writer(ui)
    @writer_interface = ui
  end

  def set_reader(ui)
    @reader_interface = ui
  end

  def read_and_display_stream
    text = read

    until text == "exit\n" do
        write(text)
        text = read
    end
  end

  def read
    @reader_interface.gets
  end

  def write(txt)
    @writer_interface.puts(txt)
  end
end
