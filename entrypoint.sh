cd /brook
wget -O brook https://github.com/txthinking/brook/releases/download/v${VERSION}/brook_linux_arm64
wget -O brook1 https://github.com/txthinking/brook/releases/download/v${VERSION}/brook

chmod +x /brook/brook
chmod +x brook

chmod +x /brook/brook1
chmod +x brook1

./brook --help
echo "hello，GFW"

./brook1 --help
echo "Fuck，GFW"
# ./brook server -l :6060 -p cross
