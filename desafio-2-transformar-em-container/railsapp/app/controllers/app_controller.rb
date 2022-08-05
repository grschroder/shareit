class AppController < ApplicationController

    def  index
        require 'socket'

        @hostname = Socket.gethostname
        puts "Hostname: #{@hostname}" 

        @ips = Socket.ip_address_list


        @ips.each do |ip|
        
            if ip.pfamily == 2 && ip.ip_address != '127.0.0.1'
                puts "IP Address: #{ip.ip_address}"
                #puts ip.pfamily
                @ipaddress = ip.ip_address
            end
            #puts ip.class
            #puts ip
            #puts ip[Addrinfo]
        end    


        

        
    end
end