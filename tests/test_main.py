from src.main import welcome_message

def test_welcome_message():
    assert welcome_message("Ammy") == "Welcome aboard, Ammy! Let's dive into the world of Data Engineering."

def test_welcome_message_empty():
    assert welcome_message("") == "Welcome aboard, Guest_student! Let's dive into the world of Data Engineering."