
## Design of project

1. A template is required to run this program.
2. You can store as many template as you like inside /Inputs folder, the current program will process all the files from the /Inputs folder
3. Some sample inputs are already added into the folder
4. A template is a txt file
5. The program will read the files from /Inputs, process them and store results into the /Output folder one file will be generated per input file with the same name
6. You need to store dataset inside the folder named /dataset, this folder contains 2 files clauses.json and sections.json sample dataset is already added into the folder

# System components
  1. Data models are present inside app/models
  2. main script of our application is app/main.rb

## Steps to execute the script

1. Place your templates inside /Inputs folder
2. Make sure clauses.json and sections.json are present inside /dataset folder
3. To switch in the app directory ```cd app```
4. Execute the script inside app directory ```ruby main.rb```

## How to run specs

1. bundle exec rspec
