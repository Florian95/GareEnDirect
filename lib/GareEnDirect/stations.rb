module GareEnDirect

  class Stations

    attr_accessor :stations, :station, :conn

    def initialize(station_name = nil)
      self.conn = GareEnDirect::HttpClient.new
      all
      if station_name
        self.station = stations.select { |g| g[:name] == station_name }.first
        raise "Station Doesn't Exists" if station.nil?
      end
    end

    def all
      self.conn.get('/')
      self.stations = conn.search('#liste ul li').map do |elem|
        {ref: elem.at('a').attributes['href'].value.gsub(/.+fr\/(\w+)\/accueil.+/, '\1'), name: elem.inner_text}
      end
    end

    def station_info
      self.conn.get('/' + self.station[:ref] + '/votre-gare/')
      self.conn.search('.ouverture_heure li').map do |hours|
        hours.inner_text
      end.to_a
    end

    def next_departures
      parse_horaires('dep')

    end

    def next_arrivals
      parse_horaires('arr')
    end

    private

    def parse_horaires(direction)
      self.conn.get('/' + self.station[:ref] + '/horaires-temps-reel/' + direction + '/')
      self.conn.search('table.tab_horaires_tps_reel tbody tr').map do |line|
        {
            transporteur: line.at('td.tvs_td_type').inner_text,
            num_train:    line.at('td.tvs_td_numero').inner_text,
            time:         line.at('td.tvs_td_heure').inner_text,
            destination:  line.at('td.tvs_td_originedestination').inner_text,
            information:  line.at('td.tvs_td_situation').inner_text,
            voie:         (line.at('td.tvs_td_voie').inner_text rescue '')
        }
      end
    end

  end

end
