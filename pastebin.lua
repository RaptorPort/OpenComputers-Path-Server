{
  --default installation path
  path="/usr",
  --Additional repositories and packages go here, for correct package syntax, check https://github.com/OpenPrograms/Vexatos-Programs/blob/master/oppm/etc/example-config.cfg
  repos={
    ["RaptorPort/OpenComputers-Path-Server"] = {
      ["raptorpath"] = {
        ["files"] = {
          ["master/path_server/etc/rc.d/path_server.lua"] = "//etc/rc.d",
          ["master/robot/lib/location.lua"] = "/lib",
          ["master/robot/lib/path.lua"] = "/lib",
          ["master/robot/etc/rc.d/location.lua"] = "//etc/rc.d"
        },
        ["repo"] = "tree/master/Robot", --Used by the website. This is where the package will link to on the website
        ["dependencies"] = {
          ["oop-system"] = "/"
        },
        ["name"] = "OpenComputers-Path-Server",--This is for "oppm info"
        ["description"] = "Server that performs A* pathing and sends it to Clients",--This is for "oppm info"
        ["authors"] = "RaptorPort"--This is for "oppm info"
      },
    },
    ["OpenPrograms/samis-Programs"]={
      ["nidus"] = {
        ["files"] = {
          ["master/nidus/nidus.lua"] = "/bin", --executable programs should always be installed to /bin
          ["master/nidus/core.lua"] = "/lib/nidus", --libraries should always be installed to /lib
          ["master/nidus/hosts.db"] = "//var/lib/nidus"
        },
        ["repo"] = "tree/master/nidus",
        ["dependencies"] = {
          ["oop-system"] = "/"
        },
        ["name"] = "NiDuS DNS Server",
        ["description"] = "A DNS server that is light and easy to use. Uses its own protocol.",
        ["authors"] = "samis"
      },
    }
  }
}
