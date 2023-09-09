package main

import (
	"fmt"
	"math/rand"
)

func main() {
	answers := []string{
		"It is certain",
		"It is decidedly so",
		"Without a doubt",
		"Yes, definitely",
		"You may rely on it",
		"As I see it yes",
		"Most likely",
		"Outlook good",
		"Yes",
		"Signs point to yes",
		"Reply hazy return again",
		"Ask again later",
		"Better not tell ya now",
	}
	var index int = rand.Intn(len(answers))

	fmt.Println("Magic 8-Ball says:", answers[index])
}
