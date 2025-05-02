const {exec} = require('child_process')

const apps = ['aim', 'broadcaster-portal']

exec('turbo ls --affected --output=json', (error, stdout, stderr) => {
  if (error) {
    console.error(`Error: ${error.message}`);
    return;
  }

  try {
    const {packages: {items}} = JSON.parse(stdout);
    const isChangedApp = items.some(i => apps.includes(i.name))
    console.log('Is changed: ', isChangedApp)
  } catch (parseErr) {
    console.error(parseErr);
  }
});
