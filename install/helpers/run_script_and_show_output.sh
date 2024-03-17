TEMP_FILE="/tmp/output.txt"

run_script_and_show_output() {
    local script_path="$1"

    # Make sure the script is executable
    chmod +x "$script_path"

    # Execute the script and save the output to a temporary file
    ./"$script_path" >> "$TEMP_FILE" 2>&1 &
    local script_pid=$!

    # Use tail to show the output in real time
    tail -f "$TEMP_FILE" | dialog --title "Output do Script" --progressbox 20 100 &
    local tail_pid=$!

    # Wait for the script to finish
    wait "$script_pid"

    # Kill the tail process after the script finishes
    kill "$tail_pid"

}

show_script_output_from_tmp_file() {
    # Now display the complete output in a dialog textbox
    dialog --title "Output Completo do Script"  --backtitle "Use ARROW KEYS or PAGE UP/PAGE DOWN to navigate" --textbox "$TEMP_FILE" 20 100
}

remove_script_output_from_tmp_folder() {
    # Remove the temporary file
    rm "$TEMP_FILE"
}
