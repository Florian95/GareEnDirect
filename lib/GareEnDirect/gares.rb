module GareEnDirect

  class Gares

    def self.all
      conn = GareEnDirect::HttpClient.new
      conn.get('/fr/')
      conn.search('#liste ul li').map do |elem|
        {key: elem.at('a').attributes['href'].value.gsub(/.+fr\/(\w+)\/accueil.+/, '\1'), name: elem.inner_text}
      end
    end
  end

end
