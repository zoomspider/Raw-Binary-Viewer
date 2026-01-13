import sys

if len(sys.argv) < 2:
    print("No file provided.")
    input("Press Enter to exit...")
    sys.exit(1)

filename = sys.argv[1]

with open(filename, "rb") as f:
    while byte := f.read(1):
        print(format(byte[0], "08b"), end="")

input("\n\nPress Enter to exit...")