

Given("I would like to view a news article") do
  ForumButton = driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > ul.nav.navbar-nav.navbar-megamenu.ng-scope > li:nth-child(6) > a') 
  driver.action.move_to(ForumButton).perform
  LatestNews = driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > ul.nav.navbar-nav.navbar-megamenu.ng-scope > li:nth-child(6) > ul > li > div:nth-child(3) > div > div > ul > li:nth-child(1) > a')
  LatestNews.click
end

When("I select a particular article") do
  wait.until {driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > news-list > header > h1')}
  FirstArticle = driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > news-list > div > div.col-md-9.list-container.ng-isolate-scope > div:nth-child(1) > div.col-body > h3 > a')
end

Then("I should be taken to that article") do
	FirstArticle.click
end
