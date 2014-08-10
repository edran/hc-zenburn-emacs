import argparse


def change_brightness(s, change):
    one = s[1:3]
    two = s[3:5]
    three = s[5:7]
    ret = "#"
    one_i = hex(int("0x" + one, 16) + change)[2:].upper()
    two_i = hex(int("0x" + two, 16) + change)[2:].upper()
    three_i = hex(int("0x" + three, 16) + change)[2:].upper()
    ret = ret + one_i + two_i + three_i
    return ret

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', '--string', dest='colour',
                        required=True,
                        help='hex colour (including #)')
    parser.add_argument('-d', '--delta', dest='delta',
                        required=True, type=int,
                        help='delta you want to give')
    args = parser.parse_args()
    print change_brightness(args.colour, args.delta)
