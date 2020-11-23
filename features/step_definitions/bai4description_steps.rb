Then('is {int} images and show {string} screen') do |int, string|
    $driver.manage.timeouts.implicit_wait = 2
    expect($number_arrivals).to eq(int)
    $driver.manage.timeouts.implicit_wait = 2
    expect($driver.title).to include(string)
    end
    
Then('check description that book') do
    $driver.manage.timeouts.implicit_wait = 2
    expect($driver.find_element(:css, '#tab-description > h2').text).to eq('Product Description')
    end