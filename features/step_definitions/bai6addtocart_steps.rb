Then('verify quantity is {int}') do |int|
    $driver.manage.timeouts.implicit_wait = 2
    $driver.find_element(:css, ".quantity").click
    $driver.find_element(:css, ".button.alt").click
    sleep 2
  end
  