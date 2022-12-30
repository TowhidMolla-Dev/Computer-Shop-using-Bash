#!/bin/bash

# Define the prices for each option
option1_price=10
option2_price=20
option3_price=30
option1_1_price=15
option1_2_price=25
option1_3_price=35
option1_4_price=40
option2_1_price=50
option2_2_price=60
option2_3_price=70
option3_1_price=80
option3_2_price=90
option3_3_price=100
option3_4_price=200

# Initialize the total price to 0
total_price=0

while true; do
  # Present the user with the main menu
  echo "Please select one of the following options:"
  echo "1. Option 1"
  echo "2. Option 2"
  echo "3. Option 3"
  echo "4. Quit"

  # Read the user's choice
  read choice

  # Use a case statement to present the appropriate sub-menu based on the user's choice
  case $choice in
    1)
      # Present the user with the options for option 1
      while true; do
        echo "Please select one or more of the following options (separated by spaces):"
        echo "1. Option 1.1 ($option1_1_price)"
        echo "2. Option 1.2 ($option1_2_price)"
        echo "3. Option 1.3 ($option1_3_price)"
        echo "4. Option 1.4 ($option1_4_price)"
        echo "5. Back to main menu"

        # Read the user's choices
        read -a choices

        # Iterate through the user's choices and add the price of each option to the total
        for choice in "${choices[@]}"; do
          # Check that the choice is a valid integer
          if [[ ! $choice =~ ^[0-9]+$ ]]; then
            echo "Invalid choice."
            continue
          fi

          case $choice in
            # Add the price of each option to the total
            1)
              total_price=$((total_price + option1_1_price))
              echo "Option 1.1 selected. Total price: $total_price"
              ;;
            2)
              total_price=$((total_price + option1_2_price))
              echo "Option 1.2 selected. Total price: $total_price"
              ;;
            3)
              total_price=$((total_price + option1_3_price))
              echo "Option 1.3 selected. Total price: $total_price"
              ;;
            4)
              total_price=$((total_price + option1_4_price))
              echo "Option 1.4 selected. Total price: $total_price"
              ;;
            5)
              # Return to the main menu
              break
              ;;
            *)
              # If the user input an invalid choice, display an error message and continue to the next choice
              echo "Invalid choice."
              ;;
          esac
        done

        # Ask the user if they want to choose another option
        echo "Do you want to choose another option? (y/n)"
        read answer

        # If the user does not want to choose another option, exit the loop
        if [[ $answer = "n" ]];
  then
    break
  fi
done
;;
    2)
      # Present the user with the options for option 2
      while true; do
        echo "Please select one or more of the following options (separated by spaces):"
        echo "1. Option 2.1 ($option2_1_price)"
        echo "2. Option 2.2 ($option2_2_price)"
        echo "3. Option 2.3 ($option2_3_price)"
        echo "4. Option 2.4 ($option2_4_price)"
        echo "5. Back to main menu"

        # Read the user's choices
        read -a choices

        # Iterate through the user's choices and add the price of each option to the total
        for choice in "${choices[@]}"; do
          # Check that the choice is a valid integer
          if [[ ! $choice =~ ^[0-9]+$ ]]; then
            echo "Invalid choice."
            continue
          fi

          case $choice in
            # Add the price of each option to the total
            1)
              total_price=$((total_price + option2_1_price))
              echo "Option 2.1 selected. Total price: $total_price"
              ;;
            2)
              total_price=$((total_price + option2_2_price))
              echo "Option 2.2 selected. Total price: $total_price"
              ;;
            3)
              total_price=$((total_price + option2_3_price))
              echo "Option 2.3 selected. Total price: $total_price"
              ;;
            4)
              total_price=$((total_price + option2_4_price))
              echo "Option 2.4 selected. Total price: $total_price"
              ;;
            5)
              # Return to the main menu
              break
              ;;
            *)
              # If the user input an invalid choice, display an error message and continue to the next choice
              echo "Invalid choice."
              ;;
          esac
        done

        # Ask the user if they want to choose another option
        echo "Do you want to choose another option? (y/n)"
        read answer

        # If the user does not want to choose another option, exit the loop
        if [[ $answer = "n" ]]; then
          break
        fi
      done
      ;;
    3)
      # Present the user with the options for option 3
      while true; do
        echo "Please select one or more of the following options (separated by spaces):"
        echo "1. Option 3.1 ($option3_1_price)"
        echo "2. Option 3.2 ($option3_2_price)"
        echo "3. Option 3.3 ($option3_3_price)"
        echo "4. Option 3.4 ($option3_4_price)"
        echo "5. Back to main menu"

        # Read the user's choices
        read -a choices

        # Iterate through the user's choices and add the price of each option to the total
        for choice in "${choices[@]}"; do
          # Check that the choice is a valid integer
          if [[ ! $choice =~ ^[0-9]+$ ]];
  then
            echo "Invalid choice."
            continue
          fi

          case $choice in
            # Add the price of each option to the total
            1)
              total_price=$((total_price + option3_1_price))
              echo "Option 3.1 selected. Total price: $total_price"
              ;;
            2)
              total_price=$((total_price + option3_2_price))
              echo "Option 3.2 selected. Total price: $total_price"
              ;;
            3)
              total_price=$((total_price + option3_3_price))
              echo "Option 3.3 selected. Total price: $total_price"
              ;;
            4)
              total_price=$((total_price + option3_4_price))
              echo "Option 3.4 selected. Total price: $total_price"
              ;;
            5)
              # Return to the main menu
              break
              ;;
            *)
              # If the user input an invalid choice, display an error message and continue to the next choice
              echo "Invalid choice."
              ;;
          esac
        done

        # Ask the user if they want to choose another option
        echo "Do you want to choose another option? (y/n)"
        read answer

        # If the user does not want to choose another option, exit the loop
        if [[ $answer = "n" ]]; then
          break
        fi
      done
      ;;
    4)
      # Quit the program
      break
      ;;
    *)
      # If the user input an invalid choice, display an error message and continue to the next iteration of the loop
      echo "Invalid choice."
      continue
      ;;
  esac
done


# Present the final total price to the user
#echo "Total price: $total_price"

# Prompt the user to enter their payment information
#echo "Please enter your payment information:"
#read payment_info

# Process the payment using the payment gateway or other system
# Save the order to a database or file
# Send a confirmation email to the user

 if [[ "$choice" == "4" ]]; then
    # Display the invoice
echo "Final total price: $total_price"
echo "<h1>Invoice</h1>" > invoice.html
echo "<p>Final total price: $total_price</p>" >> invoice.html

wkhtmltopdf invoice.html invoice.pdf
# Remove the HTML document
rm invoice.html
#move the document
mv invoice.pdf ~
evince ~/invoice.pdf 
    exit
  fi
