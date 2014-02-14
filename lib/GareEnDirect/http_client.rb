module GareEnDirect

  class HttpClient

    URL = 'http://www.gares-en-mouvement.com/fr'

    def initialize

    end

    def get(path)
      begin
        response = Excon.get(URL + path)
        @doc = Nokogiri::HTML(response.body)
      rescue => e
        raise 'ERROR FETCHING OR PARSING'
      end
    end

    def method_missing(m, *args, &block)
      @doc.send(m, *args)
    end

  end

end