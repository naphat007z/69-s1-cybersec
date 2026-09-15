module.exports = ({ env }) => ({
    auth: {
        secret: env('ADMIN_JWT_SECRET'),
    },
    rateLimit: {
        enabled: true,
        max: 100,
        interval: { min: 5 },
    },
});