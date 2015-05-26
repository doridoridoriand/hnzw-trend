# Install and Run

## Google Chrome CUI
```
$ cd $HOME
$ wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
$ sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
$ sudo apt-get update
$ sudo apt-get install -y google-chrome-stable
```

## chrome driver
```
$ sudo apt-get install unzip
$ wget http://chromedriver.storage.googleapis.com/2.13/chromedriver_linux64.zip
$ unzip chromedriver_linux64.zip
$ sudo cp chromedriver /usr/local/bin
$ sudo chmod +x /usr/local/bin/chromedriver
$ rm chromedriver
$ rm chromedriver_linux64.zip
```

## Virtual Display Driver
```
$ sudo apt-get install xvfb
```

## ruby dependencies install
```
$ bundle install --path .bundle/gems --jobs 4
```
## CUI mode
```
$ ruby data_processor.rb
```

## sinatra run
```
$ bundle exec guard -i => run
```
