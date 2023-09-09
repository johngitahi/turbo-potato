package main

import (
	"fmt"
	"math/rand"
	"os"
	"text/tabwriter"
	"time"
)

func main() {
	// create and seed the generator
	// typically, u want to use a non-fixed seed(constant)
	// using a fixed seed produces the same output
	seed := time.Now().UnixNano()
	r := rand.New(rand.NewSource(seed))

	// tabwriter to generate aligned output
	w := tabwriter.NewWriter(os.Stdout, 1, 1, 1, ' ', 0)
	defer w.Flush()
	show := func(name string, v1, v2, v3 any) {
		fmt.Fprintf(w, "%s\t%v\t%v\t%v\n", name, v1, v2, v3)
	}

	// Float32 and Float64 values are in [0, 1).
	show("Float32", r.Float32(), r.Float32(), r.Float32())

	// Perm generates a random permutation of the numbers [0, n).
	show("Perm", r.Perm(5), r.Perm(5), r.Perm(5))


}
