package ethnet.simulations;

import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network EthNet
{
    @display("bgb=544,283");
    submodules:
        server: StandardHost {
            @display("p=78,152");
        }
        client: StandardHost {
            @display("p=445,156");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=265,39");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

