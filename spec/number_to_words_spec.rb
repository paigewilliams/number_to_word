require('rspec')
require('number_to_words')
require('pry')

describe('#number_to_words') do
  it('display word of inserted number')do
    expect(number_to_words(1)).to(eq('one'))
  end

  it('display word of inserted number with two digits')do
    expect(number_to_words(54)).to(eq('fiftyfour'))
  end
  it('display word of inserted number with three digits')do
    expect(number_to_words(139)).to(eq('onehundredthirtynine'))
  end
end
