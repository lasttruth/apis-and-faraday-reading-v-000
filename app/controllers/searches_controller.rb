class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = 'UPFWGB3CSOM2TU5HO25PMWKYJEGQKFV4HZPF4GNJVJ1LON52'
     req.params['client_secret'] = 'HCWWAFJKQM5COC2GNX3IMXO4LJMRXLDSWXWX1HSGLPB2OMJS'
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
  end
end
