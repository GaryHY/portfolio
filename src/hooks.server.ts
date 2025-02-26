import { redirect, type Handle } from '@sveltejs/kit';

export const handle: Handle = async ({ event, resolve }) => {
    if (event.url.pathname === '/soon') {
        return resolve(event);
    }
    throw redirect(307, '/soon');
};
