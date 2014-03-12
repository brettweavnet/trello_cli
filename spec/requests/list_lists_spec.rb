require 'spec_helper'

describe TrelloCli::Requests::ListLists do
  before do
    Trello.should_receive(:configure)
  end

  it "should list the lists for given board" do
    trello_board_mock = double 'new'
    Trello::Board.should_receive(:new).with('id' => '123').
                  and_return trello_board_mock
    trello_board_mock.stub :lists => ['321']
    subject.list(:board_id => '123').should == ['321']
  end
end
