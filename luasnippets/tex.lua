local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require('luasnip.extras').rep

return {
    -- \begin{} ... \end{}
    s('beg', {
        t('\\begin{'), i(1, 'env'), t('}'),
        t({ '', '\t' }), i(2),
        t({ '', '\\end{' }), rep(1), t('}'),
    }),

    -- inline math
    s('mk', { t('$'), i(1), t('$') }),

    -- display math
    s('dm', {
        t({ '\\[', '\t' }), i(1), t({ '', '\\]' }),
    }),

    -- fraction
    s('ff', { t('\\frac{'), i(1), t('}{'), i(2), t('}') }),

    -- figure environment
    s('fig', {
        t({ '\\begin{figure}[htbp]', '\t\\centering', '\t\\includegraphics[width=0.8\\linewidth]{' }),
        i(1, 'filename'),
        t({ '}', '\t\\caption{' }), i(2, 'caption'), t({ '}', '\t\\label{fig:' }), i(3, 'label'),
        t({ '}', '\\end{figure}' }),
    }),

    -- section
    s('sec', { t('\\section{'), i(1), t('}') }),
    s('ssec', { t('\\subsection{'), i(1), t('}') }),

    -- citation
    s('ci', { t('\\cite{'), i(1), t('}') }),

    -- label + ref
    s('lab', { t('\\label{'), i(1), t('}') }),
    s('ref', { t('\\ref{'), i(1), t('}') }),
}
