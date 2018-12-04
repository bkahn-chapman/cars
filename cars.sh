#! /bin/bash
#cars.sh
#Benjamin Kahn

quitCounter=0

while [ $quitCounter -eq 0 ]
do
	echo "Would you like to view the 'list' of cars, 'add' a car to the list, or 'quit' the program? "
	read choice
	case $choice in
	list) sort My_old_cars | tr ":" " ";;
	add) echo "What year was the car manufactured in? "
		read year
		echo "Who manufactured the car? "
		read make
		echo "What model was the car? "
		read model
		carData=$year:$make:$model
		echo $carData >> My_old_cars;;
	quit) echo "Thank you for using the old car database! Have a nice day!"
		quitCounter=1;;
	*) echo "Please insert one of the three choices ('list', 'add', 'quit') as they are written. ";;
	esac
done
