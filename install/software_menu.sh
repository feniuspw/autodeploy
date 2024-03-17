# Software menu options
SOFTWARE_OPTIONS=(
    "Docker" "" off
    "Nginx" "" off
)

SOFTWARE_MESSAGE="Select all software you want with SPACE key and then press enter on OK button"

# Display software menu
software_menu() {
    while true; do
        CHOICE=$(dialog --backtitle "$SOFTWARE_MESSAGE" --title "Software Installation" --ok-label "Start" --checklist "Select software to install:" 15 60 4 \
            "${SOFTWARE_OPTIONS[@]}" 3>&1 1>&2 2>&3)
        
        # Check if user pressed Cancel or Esc
        if [[ $? -ne 0 ]]; then
            break
        fi

        # Convert the checklist output into an array
        IFS=' ' read -r -a selected_options <<< "$CHOICE"

        for option in "${selected_options[@]}"; do
            # Remove the quotes around the option
            option=$(echo $option | sed 's/"//g')
            case $option in
                Docker)
                    run_script_and_show_output "install/utils/docker.sh"
                    ;;
                Nginx)
                    run_script_and_show_output "install/utils/nginx.sh"
                    ;;
            esac
        done
        show_script_output_from_tmp_file
        remove_script_output_from_tmp_folder
        # Break the loop after selection to prevent infinite looping
        break
    done
}
