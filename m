Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFE48498
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C07C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693474448;
	bh=aK5LgRyFJUXU/uUURpTmv7vULWlXkCCO2bG0tGWGtRc=;
	h=To:Subject:From:Date:From;
	b=JgDziLnSEWe9Dvo1J6s6J55dsrcRdi2FwvTT6dvXDSzZcUP7M9ywIJd2uSCo1nkCl
	 N66cLfu94krvbM97N/sKdbtZopeKOig5Xuyfvrn9oyp/jqqBQakVvC4j4fg1vgOPmE
	 ir4j6ddgvdQmL0vlriBcRtWZA4N5xSE6kEghBHjf0Suf6imcdEv2D7JhLsA4LfEjz4
	 t1zgfeJVgL3LGKBq6H7sZWfDchfAFz8Qv7dSx85J5UyvCDiSEPciozCzPv+9SNXgQ6
	 SWsBAMUMj3LK6JmuqUoZSQTj8QYRsdlz01FR5xx2PDE804uXZoAVP/2uMjFhY+U311
	 s/q+JoOmskGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4835C83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169347444873.24430.13885936768681639151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d666ae318b27d36dc6336a24d7eade45ebbb3ef2c7337acb8a3946c77c0f6196
Date: Thu, 31 Aug 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693474448
