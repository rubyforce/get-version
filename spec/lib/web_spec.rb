require 'spec_helper'

module GetVersion
  describe Web do
    def app
      Web
    end

    describe 'GET /version.txt' do
      it 'should respond with success' do
        get '/version.txt'
        last_response.status.should eq(200)
      end

      it "should return version of project based on tags" do
        Web.any_instance.should_receive(:run_command).with("git describe --tags").and_return("v0.0.1")
        get '/version.txt'
        last_response.body.should eq("v0.0.1")
      end
    end
  end
end

