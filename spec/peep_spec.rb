require 'peep'

describe Peep do

describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (text) VALUES('this is a test') RETURNING id, text;")
      connection.exec("INSERT INTO peeps (text) VALUES('this is also a test') RETURNING id, text;")

      peeps = Peep.all

      expect(peeps.first).to be_a Peep
      expect(peeps.first.text).to eq 'this is a test'
      expect(peeps.last.text).to eq 'this is also a test'
    end
  end

end
