{
  networking = {
    hostName = "homelab-nixos";

    wireless.enable = true;
    
    # DHCP (set to false because it is deprecated)
    useDHCP = false;

    interfaces = {
      eno1 = {
        useDHCP = true;
        ipv4.addresses = [
          {
            address = "192.168.100.82";
            prefixLength = 24;
          }
        ];
      };
    };

    # Firewall
    nftables.enable = true;  # Use the newer nftables instead of the older iptables
    firewall = {
      enable = true;
      allowedTCPPorts = [
        30000  # Minetest
      ];
      allowedUDPPorts = [
        30000  # Minetest
      ];
    };
  };
}
