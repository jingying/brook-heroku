cd /brook
wget --no-check-certificate -N "https://github.com/txthinking/brook/releases/download/${VERSION}/brook"
chmod +x /brook/brook

./brook --help
echo "Hello,the world!"

./brook server -l :${PORT} -p ${PASSWORD}
