require './custom_time'

describe CustomTime, "#add" do
  it "returns entered time when 0 added" do
    original_time = '9:13 AM'
    time = CustomTime.new
    time.add(original_time, 0).should eq(original_time)
  end
  it "returns 9:10 AM when 10 is added to 9:00 AM" do
    original_time = '9:00 AM'
    time = CustomTime.new
    time.add(original_time, 10).should eq("9:10 AM")
  end
  it "returns 10:00 AM when 10 is added to 9:50 AM" do
    original_time = '9:50 AM'
    time = CustomTime.new
    time.add(original_time, 10).should eq("10:00 AM")
  end
  it "returns 10:05 AM when 10 is added to 9:55 AM" do
    original_time = '9:55 AM'
    time = CustomTime.new
    time.add(original_time, 10).should eq("10:05 AM")
  end
  it "returns 1:05 PM when 70 is added to 11:55 AM" do
    original_time = '11:55 AM'
    time = CustomTime.new
    time.add(original_time, 70).should eq("1:05 PM")
  end
  it "returns 12:05 PM when 10 is added to 11:55 AM" do
    original_time = '11:55 AM'
    time = CustomTime.new
    time.add(original_time, 10).should eq("12:05 PM")
  end
end
