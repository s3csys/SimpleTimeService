// time.js
module.exports = (req, res, next) => {
  if (req.path === '/time') {
    const now = new Date();

    // Get visitor's IP
    const ip =
      req.headers['x-forwarded-for']?.split(',')[0] || // if behind proxy
      req.socket?.remoteAddress ||                    // standard
      req.connection?.remoteAddress ||                // fallback
      'Unknown';

    res.json({
      timestamp: now.toISOString(),
      ip: ip
    });
  } else {
    next();
  }
};
