
class Page

  def initialize(options = {})
    @header = options['header']
    @article = options['article']
  	@timestamp = options['timestamp']

	@header ||= ""
	@article ||= ""
	@timestamp ||= timestamp
  end

  def header
	@header 
  end

  def article
  	@article
  end

  def timestamp
  	@timestamp
  end

  def header=(new)
  	@header = new
  end

  def article=(new)
  	@article = new
  end

  def timestamp=(new)
  	@timestamp = new
  end

  def to_s
    string = "Header: #{header}\nTime: #{timestamp}\nArticle: #{article}"
  end

end

