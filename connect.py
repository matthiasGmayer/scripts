#!/bin/python3
import sys
import os
import argparse
import urllib.request

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Connect to uni-vpn")
    parser.add_argument("--connection", "-c", type=str, default="wgtuk-Split-U")
    parser.add_argument("--timeout", "-t", type=int, default=1)
    parser.add_argument("--tries", "-n", type=int, default=200)
    args = parser.parse_args()
    url = "http://google.com/"
    req = urllib.request.Request(
        url,
        data=None,
        headers={
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
        }
    )
    for i in range(args.tries):
        print(f"try {i}:")
        try:
            os.system(f"nmcli con up {args.connection}")
            urllib.request.urlopen(req, timeout=args.timeout)
            break
        except Exception as e:
            print(e)
    print("successfully connected")

