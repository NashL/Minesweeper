# support/request_spec_helper.rb
module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end
end