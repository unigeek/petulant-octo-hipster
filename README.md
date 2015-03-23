petulant-octo-hipster
=====================

Very simple example of configuration for headless web testing
with RSpec, Capybara, Poltergeist and PhantomJS.

From nepalez/ruby (Ubuntu 14.04 + MRI Ruby 2.1.2 + Rubygems + Bundler),
add RSpec, Capybara, Poltergeist and PhantomJS.

Start container interactively, execute "rspec test.rb" in the container
and examine directory for output result.

For example,
From a Docker-enabled platform, such as Ubuntu 14.04, you might do the following:

1. `cd ~`
2. `git clone https://github.com/unigeek/petulant-octo-hipster`
3. `cd petulant-octo-hipster`
4. `sudo docker build -t demo .`
5. `sudo docker run -i -t demo`
6. `rpec test.rb`

You now expect to see:
`1 example, 0 failures`

...and issuing `ls -al` should expose a new screen capture named `capture.png` with a recent timestamp. You can copy this to the host by doing the following..

7. In another terminal / shell, issue `sudo docker ps` which might show something like this..


    CONTAINER ID   IMAGE         COMMAND    CREATED         STATUS          PORTS     NAMES

    4686d8b1a5cc   demo:latest   bash       8 minutes ago   Up 8 minutes              goofy_sammet1

8. `sudo docker cp 4686d8b1a5cc:/app/petulant-octo-hipster/capture.png ~`
