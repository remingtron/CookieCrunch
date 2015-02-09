When(/^I try to swap two candies$/) do
  puts Calabash::Cucumber::Launcher.launcher.device.screen_dimensions # on ipad: {:sample=>1, :height=>2048, :width=>1536, :scale=>2}
  swipe(:right, {:offset => {:x => 384, :y => 512}})
end

Then(/^I can see them swap$/) do
  # no op... not sure how to inspect these yet
end
