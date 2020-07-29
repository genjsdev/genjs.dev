module.exports = {
    plugins: ['@js-docusaurus'],
    root: {
        type: 'js-docusaurus',
        vars: {
            name: 'genjs',
            author: {
                name: 'Olivier Hoareau',
                email: 'oha+oss@greenberets.io',
            },
            readme: true,
            makefile: {
                microgen: true,
            }
        },
    }
}