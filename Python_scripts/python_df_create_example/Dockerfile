FROM python:3.8
ADD create_df.py .
COPY requirements.txt ./
RUN pip install -r requirements.txt
CMD ["python","create_df.py"]