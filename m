Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1036817C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B5CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673319087;
	bh=mDvGZW2GUTtZIZ+YnwYF5Af7wfiCYcqpMR1ztenecZM=;
	h=To:Subject:From:Date:From;
	b=TCeA8dkXtp5A/OU2zLgffl/sWnDLxOV62MIdFCUyJsCKFjWVH4bL2JRRsXjGd3IWI
	 s9zQcREdXV6lWkmGYF8+rNXxPe2F3z3rOr/IgjUF8nPAW9TR/4Z/OHJLXcO5YstIpN
	 zIqqWN8jN4s/VuQFmK6brXE1zm5JUoK+SRd3C4wpWiY2LVLYlJrEBUFRFVeUugZ9VO
	 gmXjddIXfH3w2Pvhwdz8fjEzVB/pqlFEJIoz91sYRwBtRUctxEhvfC2YKUwOJBxMBT
	 sLCGnd1Gl7qcP2OLTVKJ/l/5lxK/bRO+2LBgHYugkqH1mjgzQ/yl3XP79ct6XLZN2T
	 K8eeu+3KqkIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 850ACC5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331908752.1038.1106390557210884357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64642b83fe45f2248913cab16002ffe571c39cec242983a7382d62b3c692eaa
Date: Tue, 10 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673319087
