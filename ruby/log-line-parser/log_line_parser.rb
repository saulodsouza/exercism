class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @message = @line.split.drop(1)
    @message.join(" ")
  end

  def log_level
    @line[/(?<=\[).+?(?=\])/].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
