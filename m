Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FF8186F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84316C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670757087;
	bh=n/rHObMewFVvvFgcuDx0yCLNhk0Rq6rqbkSFwGIZz7Y=;
	h=To:Subject:From:Date:From;
	b=lQL8xiueGfbiM/ZE50OQ9UQm0ST0agVwuAk8TZ9C53vqT/WnMxuziGZusvrsGuMKr
	 7xpzxPsY9PuIav3fTQva17NncIWtFsKc42TI40WV+eACF2q5Sp5RAcvwbI3gaFKYel
	 FglQw1+Z7EYNQBAAfF8W67kQ6SIt0hn+wIn0IKaqrEOlxfY/eP/rET05tiuD1W27hf
	 BWjCjxEi47VFxss+c5hZYUvTT6XJe8/8vKfSWKSZxl2npbKfKcbnX/nETQmaT/kCMa
	 33tuCrqCdTp6Z0r5ddRf1dk0sHJwiKImpk5bqk4sPAH1FJxwI0etla6PIxJKCsKyP7
	 HSsIF8xvvwLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68542C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075708741.5282.13327170168832666832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bec57cf4505f7b3218b396e0f63dfad286c925a7178cd4abe38b97d73b42879
Date: Sun, 11 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670757087
