import unittest

from app.main import app

class FlaskTestCase(unittest.TestCase):
    # Test the 'Hello, world' route

    def setUp(self):
        self.app = app.test_client()

    def test_hello_world(self):
        response = self.app.get('/')
        self.assertEqual(response.data.decode('utf-8'), "Hello, World!")

if __name__=='__main__':
    unittest.main()

