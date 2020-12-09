Then('click add to cart') do
    #find element quantity, clear and input 461 a books
    $quantity_book = $driver.find_element(:css, "input.text")
    $quantity_book.clear
    $quantity_book.send_keys 461
    $driver.find_element(:css, ".button.alt").click
    #lấy số lượng còn lại ở kho để cho vào chuỗi xác nhận
    $quantity_stock = $driver.find_element(:css, ".in-stock")
    #just get the quantity
    $quantity = $quantity_stock.text.delete("in stock")
    #verify dialog message
    $validation_message = $quantity_book.attribute("validationMessage")
    expect($validation_message).to eq("Value must be less than or equal to "+ $quantity + ".")
    
  end