import json, time, os

keyName = 'id_rsa_ops_beliven'

os.system(f'rm -f ../{keyName}')
os.system(f'rm -f ../{keyName}.pub')
os.system(f'ssh-keygen -f ../{keyName} -q -N ""')

result = {
  "path": f"../{keyName}.pub",
}

print(json.dumps(result))