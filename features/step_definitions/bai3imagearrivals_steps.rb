Given('click arrivals images') do
    $driver.get("http://practice.automationtesting.in")
    $driver.manage.window.maximize
    end
  
When('navigating to next page and user can add the book') do
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
    #click image of arrival
    $driver.find_element(:css, ".wp-post-image").click
end

Then('is {int} images') do |int|
    $driver.manage.timeouts.implicit_wait = 2
    expect($number_arrivals).to eq(int)
end
    
Then('show {string} screen') do |string|
    #verify title
    $driver.manage.timeouts.implicit_wait = 2
    expect($driver.title).to include(string)
end