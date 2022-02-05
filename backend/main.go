package main

import (
	"sort"
	"strconv"

	"github.com/gofiber/fiber"
)

func main() {
	rank := []int{}
	app := fiber.New()
	app.Get("/", func(c *fiber.Ctx) {
		c.Send("Hello, World!")
	})

	app.Get("/rank/:points", func(c *fiber.Ctx) {
		// myPoints, _ := strconv.Atoi(c.FormValue("points"))
		myPoints, _ := strconv.Atoi(c.Params("points"))
		rank = append(rank, myPoints)

		sort.Slice(rank, func(i, j int) bool {
			return rank[i] > rank[j]
		})

		for ind, val := range rank {
			if val == myPoints {
				// s := string(string(len(rank)) + "명중에" + string(ind+1) + "등")
				c.Send(len(rank), "명 중에", ind+1, "등")
				return
			}
		}

		c.Send("Rank added")
	})

	app.Listen(3000)

	return
}
