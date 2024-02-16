{
  networking = {
    hostName = "homelab-nixos";

    # DHCP (set to false because it is deprecated)
    useDHCP = false;

    interfaces = {
      eno1 = {
        useDHCP = true;
      };
    };

    # Firewall
    nftables.enable = true;  # Use the newer nftables instead of the older iptables
    firewall = {
      enable = true;
    };
  };
}
