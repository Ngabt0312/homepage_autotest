Given('navigate home page') do
  $driver.get("http://practice.automationtesting.in")
  $driver.manage.window.maximize
end

When('click menu button of home page') do
#click shop menu
$driver.find_element(:css, "#menu-item-40").click
$driver.manage.timeouts.implicit_wait = 5
$driver.find_element(:link_text,"Home").click
sleep (2)
#test whether arrivals on the page
$test_arrivals = $driver.find_elements(:css, ".woocommerce-LoopProduct-link")
$number_arrivals = $test_arrivals.count
#show the counted of arrivals
Kernel.puts $number_arrivals
end

Then('arrivals number is {int}') do |int|
expect($number_arrivals).to eq(int)
end