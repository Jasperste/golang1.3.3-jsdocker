package main
import "fmt"
import "os"
func main() {
    fmt.Println("Dockertest");
    fmt.Println(os.Getenv("FOO"));
}