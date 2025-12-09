{
  "name": "authentication",
  "description": "Tech-agnostic authentication module template",
  "placeholders": [
    "MODULE_NAME",
    "USER_MODEL",
    "TOKEN_FUNCTION",
    "HASH_FUNCTION",
    "AUTH_STRATEGY"
  ],
  "outputs": {
    "controller": "structure/controllers/auth.controller.tpl",
    "service": "structure/services/auth.service.tpl",
    "model": "structure/models/auth.model.tpl",
    "routes": "structure/routes/auth.routes.tpl",
    "dto": "structure/dtos/auth.dto.tpl",
    "config": "config/auth.config.tpl",
    "docs": "docs/usage.md.tpl"
  }
}
