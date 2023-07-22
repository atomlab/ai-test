# Use the base Python image
FROM python:3.9

# Install dependencies for PyTorch (if required)
RUN pip install torch

# Install dependencies for TensorFlow (if required)
RUN pip install tensorflow

# Install the Transformers library and other dependencies
RUN pip install transformers

# Copy your code into the container (replace <your_code> with your actual code)
#COPY . /app

# Set the working directory
WORKDIR /app

# Command to run your code
#CMD ["python", "your_file.py"]