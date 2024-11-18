<script>
    import Nav from "$lib/sections/Nav.svelte";
    import Footer from "$lib/sections/Footer.svelte";
    import "$lib/styles/style.css";
</script>

<Nav></Nav>
<div class="space-y">
    <slot></slot>
</div>
<Footer></Footer>

<style>
    .space-y {
        --padding-top: 12rem;
        padding-top: var(--padding-top);
        padding-bottom: 1rem;
        min-height: calc(100vh - var(--padding-top));
    }
</style>
