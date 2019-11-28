cd /brook
# wget -O brook https://github.com/txthinking/brook/releases/download/v${VERSION}/brook_linux_arm64
wget -O brook https://github.com/txthinking/brook/releases/download/v${VERSION}/brook

chmod +x /brook/brook
# chmod +x brook

./brook --help
echo "hello，GFW"

./brook server -l :${PORT} -p ${PASSWORD}
echo "Fuck，GFW"
