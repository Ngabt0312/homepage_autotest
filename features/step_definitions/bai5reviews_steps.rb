Then('check reviews that book') do
    $driver.find_element(:css, ".reviews_tab").click
    expect($driver.find_element(:css, ".woocommerce-Reviews-title").text).to include("Reviews")
  end