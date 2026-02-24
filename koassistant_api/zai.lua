--[[--
Z.AI API Handler

OpenAI-compatible handler with reasoning extraction support.
Z.AI (GLM) models return reasoning_content for GLM-4.5+ series,
similar to DeepSeek's reasoning_content field.

Chat completions endpoint: https://api.z.ai/api/paas/v4/chat/completions
Docs: https://docs.z.ai/api-reference/llm/chat-completion

@module zai
]]

local OpenAICompatibleHandler = require("koassistant_api.openai_compatible")

local ZaiHandler = OpenAICompatibleHandler:new()

function ZaiHandler:getProviderName()
    return "Z.AI"
end

function ZaiHandler:getProviderKey()
    return "zai"
end

-- Z.AI GLM-4.5+ models return reasoning_content in responses
function ZaiHandler:supportsReasoningExtraction()
    return true
end

return ZaiHandler
