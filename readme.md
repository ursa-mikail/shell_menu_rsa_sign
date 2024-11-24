

<pre>
% chmod +x ./main.sh
% ./main.sh

1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 1

Creating sample data file...
Sample data file 'myfile.txt' created.
abcdefghijklmnopqrstuvwxyz
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 2

Generating 512 bit Private key...
Private key 'myprivate.pem' generated.
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 3

Extracting public key from private key...
writing RSA key
Public key 'mypublic.pem' extracted.
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 4

Displaying private key...
-----BEGIN PRIVATE KEY-----
MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEA0pJjxN69xOsbDixp
6NqooeA4R/ddf/JJgm+z8eQYmdsfqU5cU8tV3nJNKEIBqVtkLw6ynNzNQaphvn5F
aI0jUwIDAQABAkBM3ku1bmpwHDNANU5kRo4Qqb1h6Bclwdi72PMjdlTUtNM+CP5S
Lh/D1iRJnkoQ7pu40eQUc7Xmb2/5ZxoKd2YBAiEA9yHAk/T2rs2UUSwljDyKys71
ra1pPcta8B58+uSExcECIQDaIMiA5kt+VwrW9qXQeUNYR4MS0i1L+5/4yQ/vdWv2
EwIgTYWK8V6wWxkl42ijxp/fMctGCdsR3k6CEjyeG92/QIECIHl2s/ADTZqmwaR+
aEs0m2m3OKfsXcjn72bMH5GKY3n9AiA8p+6nMRGirdmdLS/hVGDjT8LwaTnb42p5
Tw8IvH3NZg==
-----END PRIVATE KEY-----
.
├── main.sh
├── main_functions.sh
├── myfile.txt
├── myprivate.pem
├── mypublic.pem
├── readme.md
└── sha1.sign

1 directory, 7 files
Enter the path to your private key file: myprivate.pem
Contents of the private key:
Private-Key: (512 bit, 2 primes)
modulus:
    00:d2:92:63:c4:de:bd:c4:eb:1b:0e:2c:69:e8:da:
    a8:a1:e0:38:47:f7:5d:7f:f2:49:82:6f:b3:f1:e4:
    18:99:db:1f:a9:4e:5c:53:cb:55:de:72:4d:28:42:
    01:a9:5b:64:2f:0e:b2:9c:dc:cd:41:aa:61:be:7e:
    45:68:8d:23:53
publicExponent: 65537 (0x10001)
privateExponent:
    4c:de:4b:b5:6e:6a:70:1c:33:40:35:4e:64:46:8e:
    10:a9:bd:61:e8:17:25:c1:d8:bb:d8:f3:23:76:54:
    d4:b4:d3:3e:08:fe:52:2e:1f:c3:d6:24:49:9e:4a:
    10:ee:9b:b8:d1:e4:14:73:b5:e6:6f:6f:f9:67:1a:
    0a:77:66:01
prime1:
    00:f7:21:c0:93:f4:f6:ae:cd:94:51:2c:25:8c:3c:
    8a:ca:ce:f5:ad:ad:69:3d:cb:5a:f0:1e:7c:fa:e4:
    84:c5:c1
prime2:
    00:da:20:c8:80:e6:4b:7e:57:0a:d6:f6:a5:d0:79:
    43:58:47:83:12:d2:2d:4b:fb:9f:f8:c9:0f:ef:75:
    6b:f6:13
exponent1:
    4d:85:8a:f1:5e:b0:5b:19:25:e3:68:a3:c6:9f:df:
    31:cb:46:09:db:11:de:4e:82:12:3c:9e:1b:dd:bf:
    40:81
exponent2:
    79:76:b3:f0:03:4d:9a:a6:c1:a4:7e:68:4b:34:9b:
    69:b7:38:a7:ec:5d:c8:e7:ef:66:cc:1f:91:8a:63:
    79:fd
coefficient:
    3c:a7:ee:a7:31:11:a2:ad:d9:9d:2d:2f:e1:54:60:
    e3:4f:c2:f0:69:39:db:e3:6a:79:4f:0f:08:bc:7d:
    cd:66
=======================================================================
=======================================================================
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 5

Signing the file 'myfile.txt'...
File signed. Signature saved in 'sha1.sign'.
Hexdump of the signature:
0000000 a39f c3b0 cf90 548c 8ab1 d764 d70b 7e5d
0000010 4174 52d5 fa34 b84c 1304 c7a0 6570 06ba
0000020 4097 fd08 d409 ee17 2531 ae72 4e6c a60d
0000030 4d83 3edd 21dc 8678 0757 9c55 f0da 6e90
0000040
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 6

Verifying the signature...
Verified OK
Verification complete.
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
x|X. Exit
Input Selection: 7

Step 1: Message digest (hash)
SHA1 generates 160 bit (20 byte) hash.
8c723a0fa70b111017b4a6f06afe1c0dbcec14e3  myfile.txt
Step 2: Padding the hash value
PKCS#1v1.5 padding scheme: 00||01||PS||00||T||H
Padded Hash: 0001ffffffffffffffffffffffffffffffffffffffffffffffffffff003021300906052b0e03021a050004148c723a0fa70b111017b4a6f06afe1c0dbcec14e3
Step 3: Get modulus and private exponent from private key
MODULUS: 00d29263c4debdc4eb1b0e2c69e8daa8a1e03847f75d7ff249826fb3f1e41899db1fa94e5c53cb55de724d284201a95b642f0eb29cdccd41aa61be7e45688d2353
PRIVATE EXPONENT: 4cde4bb56e6a701c3340354e64468e10a9bd61e81725c1d8bbd8f3237654d4b4d33e08fe522e1fc3d624499e4a10ee9bb8d1e41473b5e66f6ff9671a0a776601

</pre>

##Padding the hash value
    - hash value (20 byte in case of SHA1) is extended to RSA key size by prefixing padding.
    - Default padding scheme in openssl is PKCS1.
    - PKCS#1v1.5 padding scheme: 00||01||PS||00||T||H
    - PS: Octet string with FF such that length of message is equal to key size.
    - T: Identifier of signature scheme (Each scheme has its MAGIC bytes).
    - H: Hash value of the message.
    
### PKCS#1v1.5 padding scheme for SHA1:
    ![PKCS1 #1.5 padding](pkcs1_padding.png \"PKCS1 #1.5 padding\")]

<pre>
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: 8

.
├── main.sh
├── main_functions.sh
├── myfile.txt
├── myprivate.pem
├── mypublic.pem
├── readme.md
└── sha1.sign

1 directory, 7 files
=======================================================================
=======================================================================
1. Create Sample Data File
2. Generate Private Key
3. Extract Public Key
4. Display Private Key
5. Sign File
6. Verify Signature
7. Show Full RSA Signature Generation Steps
8. List utility contents
x|X. Exit
Input Selection: x

</pre>
