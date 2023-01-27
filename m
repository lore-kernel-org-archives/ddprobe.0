Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F633D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF48BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674840785;
	bh=SiUDk1IjhGV0MCO3gtJTbknPS+lz3DwhQhJxf+FVJOU=;
	h=To:Subject:From:Date:From;
	b=NmDb0yPXYC6fcD77PTLRg/qSz0ixoVXbtPp2rSpMZ0RKQ4eqpyVpH8xVNDB6ylobn
	 kn2KbJ2AB54T6s6sMZUPPjp0/vYi4nfxWT1YZmUg1QnxqtEQOKpBg42W2vtqwWwEbn
	 TjfNbu8yidZpVIZxWhpYPsF8i27bF9ik5wVsGaDzuKOBlE011iNuPv96meMOulx35G
	 V+XvCzBwMF5fCNureugE6eT1JxUb9zmW82a4mr0/qVk0K69fCipyawh80WWCulFLd8
	 hBeWeaMNe7cYnH3eGJIzN7/Qx49fDrSbel5knCceJFcMDd7YBzymfBax7G6sqm1HGr
	 mJfUOlpH55LBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DEDC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484078572.14274.3742206990648108381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85c4b80d248b461352a88a199e8e31c108c30a3ef97793ecf580094a467b513
Date: Fri, 27 Jan 2023 17:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674840785
