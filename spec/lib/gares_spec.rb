require 'spec_helper'

describe GareEnDirect::Stations do

  it 'should list stations' do
    obj = GareEnDirect::Stations.new
    obj.stations.should be_an Array
    obj.stations.should have(870).items
    obj.stations[0].should eq({ref: 'frabt', name: 'Abancourt'})
  end

  it 'should raise error if station doesnt not exist : "Tombouctou"' do
    expect { GareEnDirect::Stations.new('Tombouctou') }.to raise_error(RuntimeError, "Station Doesn't Exists")
  end

  it 'should select "Lyon Part Dieu"' do
    obj = GareEnDirect::Stations.new 'Lyon Part Dieu'
    obj.station.should_not be_an Array
    obj.station.should be_a Hash
  end

  it 'should select "Lyon Part Dieu"' do
    obj = GareEnDirect::Stations.new 'Lyon Part Dieu'
    obj.station_info.should be_an Array
    obj.station_info.should_not be_empty
  end

  it 'should have next departures' do
    obj = GareEnDirect::Stations.new 'Lyon Part Dieu'
    next_departures = obj.next_departures
    next_departures.should be_an Array
    next_departures.should have_at_least(20).items
    next_departures[0].keys.should include(:num_train)
    next_departures[0].keys.should include(:transporteur)
    next_departures[0].keys.should include(:time)
    next_departures[0].keys.should include(:destination)
    next_departures[0].keys.should include(:information)
    next_departures[0].keys.should include(:voie)
  end

  it 'should have next arrivals' do
    obj = GareEnDirect::Stations.new 'Lyon Part Dieu'
    next_departures = obj.next_arrivals
    next_departures.should be_an Array
    next_departures.should have_at_least(20).items
    next_departures[0].keys.should include(:num_train)
    next_departures[0].keys.should include(:transporteur)
    next_departures[0].keys.should include(:time)
    next_departures[0].keys.should include(:destination)
    next_departures[0].keys.should include(:information)
    next_departures[0].keys.should include(:voie)
  end

end
