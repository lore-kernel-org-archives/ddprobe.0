Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9A020E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7579DC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664862653;
	bh=G8p/8kF39pk3pln3Z9/oQILrKCcIJ3KCtO3GdYPuEGA=;
	h=To:Subject:From:Date:From;
	b=OqJjaNlKR7ogFx7nOO4NGh9q1hlpyDnc9bL5DM2foLg/7WYLXkCBsyLD4AdSmQgdM
	 QuT9d2LfiEgPTMPtiNcHAEVL8+wCZUueAQWV6VhFVbRpGBLr92xBdD+SJI3/E2/I3C
	 MIFOUZwk+LlNzToE8ZeXe45hv71hcG5iYjucTvIyHaszQFS7BODwbBIpL1jrJ+kNhS
	 1CB6oLSxzttQjW+dHnuVKOkgRnEXlv+8AQ62uYRFiKUFJiXje2p3k29Eds6tlxdzb7
	 GIR5DuGyS7Q01GtKZTRWVmm/y2NX+2YJGAuL8w/DFIs3oxrSkJ1oT3JOEF81F3cQ6C
	 ZY+ay469Gt0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EF4C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486265335.7979.17324625111741706225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91dae128c2730f041e93820424f44e5e8f74f2538396c4032adbe22d0a0031f
Date: Tue, 04 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664862653
