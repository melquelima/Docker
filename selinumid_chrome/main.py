from selenium import webdriver
        
capabilities = {
    "browserName": "chrome",
    "browserVersion": "110.0",
    "selenoid:options": {
        "enableVideo": False,
        "enableVNC": True
    }
}

driver = webdriver.Remote(
    command_executor="http://localhost:4444/wd/hub",
    desired_capabilities=capabilities)


driver.maximize_window()
driver.get("https://intercept.fnfis.com/index.php")


from selenium import webdriver


a = 1


