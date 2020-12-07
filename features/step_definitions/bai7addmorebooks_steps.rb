Then('click add to cart') do
    #find element quantity, clear and input 461 a books
    $quantity_book = $driver.find_element(:css, "input.text")
    $quantity_book.clear
    $quantity_book.send_keys 461
    $driver.find_element(:css, ".button.alt").click
    #alert dialog message
    $alert_popup = $driver.switch_to.alert
    $alert_popup.accept
    result = driver.find_element(id: 'result').text
    expect(result).to eql('You clicked: Ok')
    #$result = driver.find_element()
    
  end