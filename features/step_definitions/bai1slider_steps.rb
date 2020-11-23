Given('access on the home page') do
    $driver.get("http://practice.automationtesting.in")
    $driver.manage.window.full_screen
  end
  
  When('click on home menu button') do
    #click shop menu
    $driver.find_element(:css, "#menu-item-40").click
    $driver.manage.timeouts.implicit_wait = 5
    $driver.find_element(:link_text,"Home").click
    sleep (2)
    #test whether slider/arrivals on the page
    $test_sliders = $driver.find_elements(:css, ".n2-ss-layers-container")
    $number_sliders = $test_sliders.count
    #show the counted of sliders/arrivals
    #Kernel.puts $number_sliders
    Kernel.puts $number_arrivals
  end
  
  Then('sliders number is {int}') do |int|
    # check slider/arrivals variable and slider is counted
    #$number_sliders == int
    expect($number_sliders).to eq(int)
  end