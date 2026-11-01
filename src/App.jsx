export default function App() {
  return (
    <main style={{ fontFamily: 'system-ui, sans-serif', maxWidth: 720, margin: '0 auto', padding: '48px 20px', color: '#1c1917' }}>
      <p style={{ color: '#166534', fontWeight: 700, letterSpacing: 1 }}>INDIANHELPER SG</p>
      <h1 style={{ fontSize: 36, lineHeight: 1.2 }}>Find Indian domestic helpers in Singapore.</h1>
      <p style={{ fontSize: 17, lineHeight: 1.6, color: '#44403c' }}>
        This is the real website project — currently under construction. Helpers create profiles free,
        employers read full profiles free and pay only to reveal a contact number (INR via UPI),
        and suppliers keep unlimited profiles active for ₹999/month.
      </p>
      <p style={{ fontSize: 15, lineHeight: 1.6, color: '#44403c' }}>
        The demo version — with sample profiles only — lives separately at{' '}
        <a href="https://indian-helper-portal.vercel.app">indian-helper-portal.vercel.app</a>.
        Nothing on the demo is real data, and none of it will appear here.
      </p>
      <p style={{ fontSize: 14, color: '#78716c', borderTop: '1px solid #e7e5e4', paddingTop: 16 }}>
        This portal is an internet listing portal. It is not an employment agency and does not hold
        an MOM employment agency licence. Employers and helpers connect and make their own
        arrangements directly.
      </p>
    </main>
  )
}
