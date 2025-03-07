# Calculator App for Jenkins

This repository contains a simple calculator application designed to be integrated with Jenkins. The application is primarily written in Python and includes Docker support.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Prerequisites

- Python 3.8 or higher
- Docker

### Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/fakeusers0/Calculator.git
   cd Calculator
   ```

2. Create a virtual environment and activate it:
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. Install the required dependencies:
   ```sh
   pip install -r requirements.txt
   ```

4. (Optional) Run the application using Docker:
   ```sh
   docker build -t calculator-app .
   docker run -p 5000:5000 calculator-app
   ```

## Usage

To use the calculator app, run the following command in your terminal:
```sh
python app.py
```

Then, you can access the application through your web browser at `http://localhost:5000`.

## Contributing

We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
