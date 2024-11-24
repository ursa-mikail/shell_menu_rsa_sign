# Create sample data file
function create_sample_data_file() {
    echo "Creating sample data file..."
    echo abcdefghijklmnopqrstuvwxyz > myfile.txt
    echo "Sample data file 'myfile.txt' created."
    cat myfile.txt
}

# Generate private key
function generate_private_key() {
    echo "Generating 512 bit Private key..."
    openssl genrsa -out myprivate.pem 512
    echo "Private key 'myprivate.pem' generated."
}

# Function to extract and display modulus and private exponent from a private key
function view_private_key() {
    read -p "Enter the path to your private key file: " private_key_file
    if [ ! -f "$private_key_file" ]; then
        echo "Error: File '$private_key_file' not found!"
        return
    fi

    echo "Contents of the private key:"
    openssl rsa -in "$private_key_file" -text -noout
    print_demarcator
}

# Extract public key
function extract_public_key() {
    echo "Extracting public key from private key..."
    openssl rsa -in myprivate.pem -pubout > mypublic.pem
    echo "Public key 'mypublic.pem' extracted."
}

# Display private key
function display_private_key() {
    echo "Displaying private key..."
    cat myprivate.pem
}

# Sign file
function sign_file() {
    echo "Signing the file 'myfile.txt'..."
    openssl dgst -sha1 -sign myprivate.pem -out sha1.sign myfile.txt
    echo "File signed. Signature saved in 'sha1.sign'."
    echo "Hexdump of the signature:"
    hexdump sha1.sign
}

# Verify signature
function verify_signature() {
    echo "Verifying the signature..."
    openssl dgst -sha1 -verify mypublic.pem -signature sha1.sign myfile.txt
    echo "Verification complete."
}

# Show full RSA signature generation steps
function show_rsa_signature_steps() {
    echo "Step 1: Message digest (hash)"
    echo "SHA1 generates 160 bit (20 byte) hash."
    shasum -a 1 myfile.txt

    echo "Step 2: Padding the hash value"
    echo "PKCS#1v1.5 padding scheme: 00||01||PS||00||T||H"
    PADDING="0001ffffffffffffffffffffffffffffffffffffffffffffffffffff00"
    ANS1_SHA1_MAGIC="3021300906052b0e03021a05000414"
    SHA1_HASH=$(shasum -a 1 myfile.txt | cut -d ' ' -f1)
    PADDED_HASH="${PADDING}${ANS1_SHA1_MAGIC}${SHA1_HASH}"
    echo "Padded Hash: $PADDED_HASH"

    echo "Step 3: Get modulus and private exponent from private key"
    PRKEY_INFO=$(openssl rsa -in myprivate.pem -text -noout)
    MODULUS=$(echo "$PRKEY_INFO" | grep -A 5 modulus: | tail -5 | tr -cd [:alnum:])
    PREXP=$(echo "$PRKEY_INFO" | grep -A 5 privateExponent: | tail -5 | tr -cd [:alnum:])
    echo "MODULUS: $MODULUS"
    echo "PRIVATE EXPONENT: $PREXP"
}

function print_demarcator(){
    echo "======================================================================="
    echo "======================================================================="
}

function default_action_for_menu() {
    #main_call=$($1)
    echo "You have entered an invallid selection!"
    echo "
        ___           ___           ___           ___           ___     
       /\__\         /\  \         /\  \         /\  \         /\  \    
      /:/ _/_       /::\  \       /::\  \       /::\  \       /::\  \   
     /:/ /\__\     /:/\:\__\     /:/\:\__\     /:/\:\  \     /:/\:\__\  
    /:/ /:/ _/_   /:/ /:/  /    /:/ /:/  /    /:/  \:\  \   /:/ /:/  /  
   /:/_/:/ /\__\ /:/_/:/__/___ /:/_/:/__/___ /:/__/ \:\__\ /:/_/:/__/___
   \:\/:/ /:/  / \:\/:::::/  / \:\/:::::/  / \:\  \ /:/  / \:\/:::::/  /
    \::/_/:/  /   \::/~~/~~~~   \::/~~/~~~~   \:\  /:/  /   \::/~~/~~~~ 
     \:\/:/  /     \:\~~\        \:\~~\        \:\/:/  /     \:\~~\     
      \::/  /       \:\__\        \:\__\        \::/  /       \:\__\    
       \/__/         \/__/         \/__/         \/__/         \/__/    
    
    "
    echo "Please try again!"
    echo ""
    echo "Press any key to continue..."
    read -n 1
    clear
    set -u # force it to treat unset variables as an error 
    unset main_menu_input
    echo ""
    #echo $main_menu_input
    echo "" 
    main

}

