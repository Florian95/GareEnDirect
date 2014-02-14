require 'spec_helper'

describe GareEnDirect::Gares do

  it 'should list gares' do
    gares = GareEnDirect::Gares.all
    gares.should be_an Array
    gares.should have(870).items
    gares[0].should eq({key: 'frabt', name: 'Abancourt'})
  end

  it 'should select "Lyon Part Dieu"' do

  end

end
