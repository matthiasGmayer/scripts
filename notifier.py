import sys
import requests
if __name__ == '__main__':
    pingurl = "https://hc-ping.com/8033b580-d8ef-4f16-84d3-ca2323385c77"
    data = ""
    if len(sys.argv) > 1:
        data = sys.argv[1]
    requests.post(pingurl, data=data)
    requests.post(pingurl+"/1", data=data)
