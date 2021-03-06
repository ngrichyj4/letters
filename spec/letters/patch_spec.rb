require "spec_helper"

module Letters
  describe ".patch!" do
    before do
      # Hide output
      $stdout.should_receive(:puts)
    end

    it "adds Letters::CoreExt to classes" do
      Klass = Class.new
      Letters.patch! Klass
      k = Klass.new
      k.p.should == k
    end

    it "adds Letters::CoreExt to objects" do
      obj = Object.new
      Letters.patch! obj
      obj.p.should == obj
    end
  end
end
