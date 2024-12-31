all: README.md

README.md: guessinggame.sh
	# Create or overwrite README.md with the header
	echo "# The Unix Workbench Assignment by Cheryl" > README.md
	# Append the current date and time of this run
	echo -e "\nThe current date and time of this run: $(date)" >> README.md
	# Append the number of lines in guessinggame.sh (run the script to get the number of lines)
	echo -e "\nGuessinggame.sh contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	# Optionally, run guessinggame.sh as part of the process (if you want it to execute)
	# ./guessinggame.sh

clean:
	rm README.md
