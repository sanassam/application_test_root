import pytest
import sys

sys.path.append('.')
from __init__ import create_app

@pytest.fixture
def app():
    app = create_app()

@pytest.fixture
def app():
    app = create_app()       # rajouter des lignes 

    return app

@pytest.fixture
def client():
    app = create_app()     # rajouter des lignes
    client = app.test_client()
    yield client
