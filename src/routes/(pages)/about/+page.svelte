<script>
    // NOTE: just copy what is in this : https://www.perryw.ca/info
    // Dedans il met des photos de son voyage au Japon, je peux faire de meme avec la martinique
    // TODO: find the photos and use them in here brother
</script>

<div class="container__small about">
    <div class="content grid" style="--gap: 8rem;">
        <div class="section">
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <h2 style="color: hsl(var(--clr-grey-500));">
                This is my story — alongside some flicks from my recent trip to
                the french Caribean (Guadeloupe and Martinique).
            </h2>
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <div class="grid" style="--gap: 1rem;">
                <h3 class="about__title">My background in Mathematics.</h3>
                <p class="about__body">
                    In June of 2022, I graduated with a degree in Mathematics
                    from the University of Toronto. During my studies, I became
                    captivated by abstract problem-solving and logical
                    reasoning. I was deeply fascinated by concepts like
                    structure and patterns—how mathematical models could
                    elegantly describe and solve real-world phenomena.
                </p>
            </div>
        </div>
        <div class="section">
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <div class="grid" style="--gap: 1rem;">
                <h3 class="about__title">But, I wanted more.</h3>
                <p class="about__body">
                    Though I loved the theoretical elegance of mathematics, I
                    grew frustrated with how detached it often felt from
                    tangible, immediate impact. I wanted to apply my skills in a
                    more dynamic environment, solve problems at a faster pace,
                    and create something that could directly affect the lives of
                    many people.
                </p>
            </div>
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <div>
                <h3 class="about__title">Why web development ?</h3>
                <p class="about__body">
                    When the pandemic struck, I saw it as a chance to try
                    something new. I stumbled upon online coding challenges and
                    hackathons, and decided to give web development a shot. At
                    first, I struggled. But over time, my persistence paid off,
                    and what began as curiosity turned into a deep passion.
                </p>
            </div>
        </div>
        <div class="section">
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <div class="grid" style="--gap: 1rem;">
                <h3 class="about__title">Making it all happen.</h3>
                <p class="about__body">
                    To my advantage, I was able to leverage many of the
                    problem-solving techniques and analytical skills I had
                    developed in mathematics to accelerate my journey into web
                    development.
                </p>
                <p class="about__body">
                    I loved breaking down complex problems into manageable
                    solutions, and found joy in crafting intuitive user
                    experiences with clean, logical structures. My mathematical
                    background instilled a deep appreciation for precision and
                    optimization, which became invaluable in writing efficient
                    code and building reliable, well-designed applications.
                </p>
            </div>
            <div class="photo__container">
                <img
                    class="photo"
                    src="https://cdn.prod.website-files.com/63dcb6e1a80e9454b630f4c4/64a5ccb799ca82d3534ad7c0_info-pic-3-p-800.png"
                    alt="random japan"
                />
            </div>
            <div class="grid" style="--gap: 2rem;">
                <div class="grid" style="--gap: 1rem;">
                    <h3 class="about__title">In my spare time,</h3>
                    <p class="about__body">
                        I'm probably making tweaks to my portfolio or hanging
                        out on Discord. Other than that, you'll find me playing
                        basketball and volleyball, hitting the gym, gaming, and
                        trying to get my hands on the latest tech.
                    </p>
                </div>
                <div class="grid" style="--gap: 2rem;">
                    <h3>Thank for stopping by !</h3>
                    <div class="signature"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    h2 {
        color: hsl(var(--clr-grey-400));
        font-size: 1.2rem;
    }
    h3 {
        color: hsl(var(--clr-grey-500));
        font-size: 1.4rem;
    }
    .section {
        --row-count: 5;
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-template-rows: repeat(var(--row-count), 1fr);
        gap: 2rem;
    }
    .section > *:nth-child(1) {
        grid-column: 1 / 2;
        grid-row: 1 / var(--row-count);
    }
    .section > *:nth-child(2n) {
        place-self: center;
        padding-inline: 1rem;
    }
    .section > *:nth-child(2) {
        grid-column: 2 / -1;
        grid-row: 1 / 2;
    }
    .section > *:nth-child(3) {
        grid-column: 2 / -1;
        grid-row: 2 / -1;
    }
    .section > *:nth-child(4) {
        grid-column: 1 / 2;
        grid-row: var(--row-count) / -1;
    }
    .section:last-child > *:nth-child(4) {
        grid-row: calc(var(--row-count) - 1) / -1;
    }
    .about {
        margin-inline: auto;
        color: hsl(var(--clr-grey-400));
    }
    .photo__container {
        --padding: 0.75rem;
        --border-radius: 3rem;
        margin-left: auto;
        display: grid;
        place-content: center;
        padding: var(--padding);
        border-radius: var(--border-radius);
        background-color: hsl(var(--clr-light-secondary));
        background-color: hsl(var(--clr-light-ternary));
        backdrop-filter: blur(15px);
        width: fit-content;
        height: fit-content;
        border: 1px solid hsl(var(--clr-light-fournary));
    }
    .photo {
        border-radius: calc(var(--padding) + 0.5 * var(--border-radius));
        border: 1px solid hsl(var(--clr-light-fournary));
    }
    .signature {
        width: 80px;
        height: 80px;
        background-color: hsl(var(--clr-dark-ternary));
    }
</style>
