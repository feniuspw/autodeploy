# Main menu options
MAIN_MENU_OPTIONS=(
    1 "Software"
    2 "Cheatsheet"
    3 "Update and Upgrade Repository"
)

# Display main menu
main_menu() {
    while true; do
        CHOICE=$(dialog --backtitle "$1" --title "Main Menu" --cancel-label "Exit" --menu "Choose an option:" 15 60 3 \
            "${MAIN_MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

        exit_status=$?
        if [[ $exit_status -eq 1 ]]; then
            your_exit_function  # Call your exit function here
            clear
            exit 0
        elif [[ $exit_status -eq 255 ]]; then
            # Handle pressing ESC key if necessary, you can call the same exit function or handle differently
            your_exit_function
            clear
            exit 0
        fi




        case $CHOICE in
            1)
                software_menu
                ;;
            2)
                echo "Easy Files selected"
                # Implement Easy Files functionality here
                break
                ;;
            3)
                run_script_and_show_output "install/utils/update_and_upgrade.sh"
                show_script_output_from_tmp_file
                remove_script_output_from_tmp_folder
                ;;
            *)
                ;;
        esac
    done
}
