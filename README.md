
## Design of project

1. A template is required to run this program.
2. You can store as many template as you like inside /Inputs folder, the current program will process all the files from the /Inputs folder.
3. Some sample inputs are already added into the folder.
4. A template is a txt file.
5. The program will read the files from /Inputs, process them and store results into the /Output folder one file will be generated per input file with the same name.
6. You need to store dataset inside the folder named /dataset, this folder contains 2 files clauses.json and sections.json sample dataset is already added into the folder.
7. You can also input a filename from command line by passing the name of the file with the txt extention.

### System components
  1. Required ruby version ```2.7.5```
  2. Required bundler version ```2.3.10```
  3. I am serving all the gems inside `.bundle` directly no need to run `bundle install` command
  4. Data models are present inside ```app/models``` folder.
  5. Terms and condition service is present inside ```app/services``` folder.
  6. common modules are present inside ```app/modules``` folder.
  7. main script of our application is app/main.rb.

## Steps to execute the script

1. Place your templates inside ```/Inputs``` folder.
2. Make sure `clauses.json` and `sections.json` are present inside ```/dataset``` folder.
3. To switch in the app directory ```cd app```.
4. There are following 3 ways to exeucte the main script of our application.
5. This will process all the files present inside `/Inputs` folder ```ruby main.rb```.
6. If you want process only one file you can pass the name of that file as command line argument ```ruby main.rb "filename.txt"```. One thing to note here is that specified file must exists in the `/Inputs` folder otherwise the script will generate `File not exists` error message.
7. If you want to process multiple files you need to pass all the names separated by space make sure all of these files should be present inside `/Inputs` folder, if any of the file is not present in the inputs directory that file won't get processed  ```ruby main.rb "filename.txt" "filename.txt"```.

## How to run specs

1. To run the specs you need to be inside the project root directory.
2. If you are inside app directory you can navigate back to root directory using this command `cd ..`.
3. Run this command to execute the specs ```bundle exec rspec```.

### Things to note

1. There is a file called `sampletest.txt` this file is being used inside specs, Don't delete this file otherwise specs can fail
2. Don't delete `/Inputs`, `/Outputs` and `/dataset` directories, these directories contains senstive information and it can cause errors if these directories are not present inside the project

