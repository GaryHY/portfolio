<footer>
    <div class="separator"></div>
    <div class="footer__content container__small">
        <div>
            <p class="first">© Designed by Gary HENRY. All rights reserved</p>
            <p>Made with love and sveltekit (I love that framework)</p>
        </div>
        <p>Last updated by Gary on November 16, 2024, 23:08PM EST</p>
    </div>
</footer>

<style>
    footer {
        margin-top: 12rem;
    }
    .footer__content {
        padding-block: 6rem;
        margin-inline: auto;
        display: flex;
        justify-content: space-between;
        align-items: flex-end;
        color: hsl(var(--clr-dark-secondary));
    }
    .separator {
        width: 100%;
        height: 1px;
        border: 1px solid #f7f7f9;
    }
    .first {
        font-weight: 600;
        color: hsl(var(--clr-dark-primary));
    }
</style>
