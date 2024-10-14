# spec/support/request_spec_helper.rb
module RequestSpecHelper
    # Parse JSON response to Ruby hash
    def json
      JSON.parse(response.body)
    end
  end
  