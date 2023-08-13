# zerotier-nat

## Description

Built upon the official `zerotier/zerotier` image, this Docker image seamlessly integrates NAT masquerading capabilities using `iptables` along with a specific NAT rule. While it enhances the image with the added NAT masquerading feature, it preserves all functionalities from the original image.

The primary purpose of this project is to provide users with an out-of-the-box solution for connecting to ZeroTier networks, coupled with NAT masquerading, removing the necessity to manually configure `iptables`.

## How to Use

To run the container, use the command below:

```bash
docker run -d \
--cap-add NET_ADMIN \
--device /dev/net/tun \
igluko/zerotier-nat [YOUR_NETWORK_ID]
```

Replace `[YOUR_NETWORK_ID]` with your ZeroTier network's ID. If you haven't set up a ZeroTier network yet, you can establish one through the ZeroTier administrative panel.

## Further Configuration

This image retains all features of the original. Should you require advanced configurations or wish to explore additional features, kindly refer to the instructions on the [zerotier/ZeroTierOne](https://github.com/zerotier/ZeroTierOne).
