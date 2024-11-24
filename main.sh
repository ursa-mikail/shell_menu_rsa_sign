# Load helper functions
source "$(dirname "$0")/main_functions.sh"

# Print menu options
function print_menu() {
    echo "1. Create Sample Data File"
    echo "2. Generate Private Key"
    echo "3. Extract Public Key"
    echo "4. Display Private Key"
    echo "5. Sign File"
    echo "6. Verify Signature"
    echo "7. Show Full RSA Signature Generation Steps"
    echo "8. List utility contents"    
    echo "x|X. Exit"
}

# Main function to handle user input
function main() {
    while true; do
        print_menu
        read -p "Input Selection: " main_menu_input
        echo ""

        case "$main_menu_input" in
            1) create_sample_data_file ;; 
            2) generate_private_key ;;
            3) extract_public_key ;;
            4) display_private_key ; tree . ; view_private_key ;;
            5) sign_file ;;
            6) verify_signature ;;
            7) show_rsa_signature_steps ;;
            8) tree . ;;
            x|X) exit 0 ;;
            *) default_action_for_menu; echo "Invalid option. Please try again." ;;
        esac

        print_demarcator
    done
}


# This builds the main menu and routs the user to the function selected.
main # This executes the main menu function.

echo ""
: <<'COMMENT_SECTION'


COMMENT_SECTION
echo ""