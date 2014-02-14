module GareEnDirect

  class HttpClient

    URL = 'http://www.gares-en-mouvement.com'

    def initialize

    end

    def get(path)
      begin
        p URL + path
        response = Excon.get(URL + path)
        @doc = Nokogiri::HTML(response.body)
      rescue => e
        p e
        raise 'ERROR FETCHING OR PARSING'
      end
    end

    def method_missing(m, *args, &block)
      @doc.send(m, *args)
    end

  end

end