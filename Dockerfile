FROM python:3.12-bookworm
WORKDIR /app
ENTRYPOINT ["bash", "-c", "source ~/.venv/rkllm-gradio/bin/activate && exec python rkllm_server_gradio.py"]
COPY ./requirements.txt ./setup.sh /app/
RUN pip install --upgrade pip && apt update && apt -y install cmake && bash setup.sh && bash -c "source ~/.venv/rkllm-gradio/bin/activate && python -m pip install --upgrade -r requirements.txt" && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*
COPY . /app


