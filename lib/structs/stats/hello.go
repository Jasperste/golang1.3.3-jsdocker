package main
import "fmt"
import "os"
func main() {
    fmt.Println("Dockertest 2");
    fmt.Println(os.Getenv("FOO")  +  "  ><<" + "thhat was foo");
    fmt.Println(os.Getenv("Beer")  +  "  ><<" + "thhat was beer");
}