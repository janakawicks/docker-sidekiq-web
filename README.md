# Sidekiq Web - Docker 
---
Sidekiq Web - Docker

---
## Environmental Varialbles

* **REDIS_HOST** *default: localhost*
* **REDIS_PORT** *default: 6379*
* **REDIS_DB** *default: 0*

## Exposed Port

* **PORT 8080**

---

### Example
```
docker run -e REDIS_HOST=myredis-svr -P -d ascensionit/sidekiq-web
```
