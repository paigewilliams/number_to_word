require('rspec')
require('number_to_words')
require('pry')

describe('#number_to_words') do
  it('display word of inserted number')do
    expect(number_to_words(18)).to(eq('eighteen'))
  end
end
