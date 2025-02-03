FROM python:3.13.1-bookworm
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip && bash setup.sh && source ~/.venv/rkllm-gradio/bin/activate && python -m pip install --upgrade -r requirements.txt
ENTRYPOINT ["python", "rkllm_server_gradio.py"]



