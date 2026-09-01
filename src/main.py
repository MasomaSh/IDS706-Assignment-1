def welcome_message(name):
    name=name.strip() # Remove extra whitespace from the input

    # If nothing was entered, use a default name
    if not name:
        name='Guest_student'

    return f"Welcome aboard, {name}! Let's dive into the world of Data Engineering."


if __name__ == "__main__":
    name = input("Enter your name: ")
    print(welcome_message(name))
    
