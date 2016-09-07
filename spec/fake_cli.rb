class FakeCli
  def read_text
    $stdin.gets.chomp
  end

  def write_text(txt)
    $stdout = StringIO.new
    $stdout.puts(txt)
  end
end
