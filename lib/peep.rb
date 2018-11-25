require 'pg'

class Peep

  attr_reader :id, :text

  def self.create(text:)
    initialize(text)
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end

    result = connection.exec("SELECT * FROM peeps;")
    result.map do |peep|
      Peep.new(id: peep['id'], text: peep['text'])
    end
  end

  def initialize(id:, text:)
    @id = id
    @text = text
  end

end
