
namespace ColorPicker
{
    class SymbolTable
    {
        private string m_selectedSymbol = "";
        // Source: https://openplanet.nl/symbols
        private string[] m_symbols = {
            "£", "€", "$", "¥", "Ƀ", "¢", "¤", "©", "®", "™", "Ⓜ", "Ⓟ", "△", "⬜", "♢", "○", "◉", "◎", "✂", "✄", "✔", "✖", "✅", "✘", "❌", "♠", "♥", "♦", "♣", "♤", "♡", "♢", "♧", "≈", "∅", "°", "µ", "π", "§", "¶", "·", "—", "‘", "’", "“", "”", "†", "‡", "•", "…", "‽", "⁂", "№", "•", "·", "⏎", "⌫",
            "★", "☆", "☐", "☑", "☒", "☛", "☞", "✓", "✗", "〃", "⎘", "☍", "⎀", "✂", "⏰", "⏱", "⏲", "⏳", "⏴", "⏵", "⏶", "⏷", "⏸", "⏹", "⏺", "🔁", "☺", "⌨", "✎", "✍", "✉", "←", "↑", "→", "↓", "↔", "↕", "⇄", "⇅", "↲", "↳", "↰", "↱", "↱", "⇤", "⇥",
            "↶", "↷", "↻", "⟳", "⟲", "➔", "↯", "↖", "➘", "➙", "➚", "➟", "⇠", "➤", "⇦", "⇨", "⇨", "«", "»", "►", "◀", "▲", "▼", "▷", "◁", "△", "▽", "➴", "●", "⏳", "★", "☆", "🔥", "🔧", "🔗", "🕑", "♫", "♪", "🔊", "💡", "❄", "⚑", "🔒", "🔓", "🔎", "🎧",
            "🌐", "🎥", "💾", "🎮", "🏃", "🏆", "🏆", "🏁", "💢", "💿", "📷", "🔍", "🔧", "🔨", "🔀", "🔀", "🔂", "🔂", "🔑", "📎", "👤", "👥", "🔔", "🔕", 

            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 

            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
            "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""
        };
        private float m_colWidth = 25.0f;

        void RenderInterface()
        {
            float windowWidth = UI::GetWindowSize().x;
            int colCount = int(Math::Max(Math::Min(Math::Floor(windowWidth / m_colWidth), 64.0f), 0.0f));
            if (UI::BeginTable("SymbolTable", colCount))
            {
                int currColCount = 0;
                for (uint i = 0; i < m_symbols.Length; i++)
                {
                    UI::TableNextColumn();
                    if (UI::Selectable(m_symbols[i], false))
                    {
                        SetSelectedSymbol(m_symbols[i]);
                    }
                    if (currColCount < (colCount - 1))
                    {
                        currColCount++;
                    }
                    else
                    {
                        currColCount = 0;
                        UI::TableNextRow();
                    }
                }
                UI::EndTable();
            }
        }

        string GetSelectedSymbol()
        {
            string symbol = m_selectedSymbol;
            m_selectedSymbol = "";
            return symbol;
        }

        private void SetSelectedSymbol(string value)
        {
            if (m_selectedSymbol == "")
            {
                m_selectedSymbol = value;
            }
        }
    }
}
