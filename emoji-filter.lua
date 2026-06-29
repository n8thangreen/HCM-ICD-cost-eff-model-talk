-- emoji-filter.lua
-- A simple Pandoc Lua filter to replace emoji shortcodes
-- This is a simplified example and might not cover all cases or be as robust as a dedicated library.

local emoji_map = {
  smile = "😊",
  rocket = "🚀",
  thinking = "🤔",
  heart = "❤️",
  thumbsup = "👍",
  thumbsdown = "👎",
  head_exploding = "🤯",
  cannot_look = "🫣",
  silly_face = "🤪",
  thankyou = "🙏",
  talking = "🗣️",
  stop = "⛔",
  
  -- Custom additions for clinical/health economics talk
  anatomical_heart = "🫀",
  zap = "⚡",
  dna = "🧬",
  warning = "⚠️",
  game_die = "🎲",
  abacus = "🧮",
  chart_with_upwards_trend = "📈",
  pound = "💷",
  balance_scale = "⚖️",
  dart = "🎯",
  round_pushpin = "📍",
  gear = "⚙️",
  crystal_ball = "🔮"
}

function Str(el)
  local text = el.text
  for shortcode, emoji in pairs(emoji_map) do
    text = text:gsub(":" .. shortcode .. ":", emoji)
  end
  return pandoc.Str(text)
end