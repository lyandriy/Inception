CMD:

apt list --installed -> lista los paquetes instalados en el contenedor

docker build -t nombre:etiqueta .   -> build consrtuye una imagen 
                                    ->-t indica que le quieres poner un nombre a esta imagen. Tambien le puedes poner una etiqueta (tipo tag)
                                    -> . indica donde esta el Dockerfile. 

docker run --rm -it nombre_de_tu_imagen -> --rm elimine automáticamente el contenedor después de que haya finalizado su ejecución
                                        -> -i permite que este abierta la entrada estandar incluso si no esta conecado a una terminal
                                        -> -t lo saca a la tty
                                        -> -d ejecutar un contenedor en segundo plano o en modo "demonio"
                                        -> --name poner un nombre al contenedor. --name nombre_del_contenedor
                                        -> --net=my-network conectar un contenedor a la nueva red

docker network ls => lista las network que estan creadas

docker network create my-network => crear una nueva network

docker inspect <nombre_o_id_del_contenedor> => erificar que un contenedor se ha conectado correctamente a una red de Docker

ping nombre_de_otro_contenedor => 64 bytes from otro.my_netw (172.18.0.2): icmp_seq=1 ttl=64 time=0.072 ms  =>  imprime la conexion por la red con el otro contenedor
                                  64 bytes from otro.my_netw (172.18.0.2): icmp_seq=2 ttl=64 time=0.055 ms
                                  64 bytes from otro.my_netw (172.18.0.2): icmp_seq=3 ttl=64 time=0.056 ms
                                
docker network connect nombre_de_network id_o_nombre_de_contenedor => conectar un contenedor a una network

