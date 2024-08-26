{
  networking = {
    hostName = "buttercap";

    networkmanager.enable = true;
    useDHCP = false;

    defaultGateway = "10.0.0.1";
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    interfaces.ens18.ipv4.addresses = [{
      address = "10.0.10.2";
      prefixLength = 8;
    }];
  };
}
