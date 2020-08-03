FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /ml-predict-house-price

## Step 2:
# Copy source code to working directory
COPY . /ml-predict-house-price

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install
RUN ./hadolint --ignore DL3013 Dockerfile

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","/ml-predict-house-price/app.py"]
