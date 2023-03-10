# Teleport Alias

if ! command -v abbrev-alias &> /dev/null;
then
  alias teleport-login="tsh login --proxy=access.teleport.nuskin.io:443 --auth=local --user=ljumonville nse-shd-us-west-2"
  alias teleport-k8s-development="tsh kube login nse-wde-usw2-kc-1c7f8c-web-shared"
  alias teleport-k8s-testing="tsh kube login nse-wts-usw2-kc-022d1b-web-shared"
else
  abbrev-alias teleport-login="tsh login --proxy=access.teleport.nuskin.io:443 --auth=local --user=ljumonville nse-shd-us-west-2"
  abbrev-alias teleport-k8s-development="tsh kube login nse-wde-usw2-kc-1c7f8c-web-shared"
  abbrev-alias teleport-k8s-testing="tsh kube login nse-wts-usw2-kc-022d1b-web-shared"
fi