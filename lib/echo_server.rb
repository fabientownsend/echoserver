class EchoServer
  def initialize(ui)
    @user_interface = ui
  end

  def read
    @user_interface.read_text
  end

  def write(txt)
    @user_interface.write_text(txt)
  end
end
