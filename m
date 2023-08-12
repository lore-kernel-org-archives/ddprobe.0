Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E518C19
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF48C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691878388;
	bh=u60F2L1pV3BpTdPVeZTUKU7fidRmbfMOabcZZrVTE+8=;
	h=To:Subject:From:Date:From;
	b=O8MVPrPhEaCrsq/cyhNX52jsFgNEq+ZPEEwz7AtFHcCGk2kKzRzA5iE4TFL2FA+0S
	 hcLLry66oSKLyuqjaDDhxiPulSezLCVOczi1/PEhZy6CAHX2A6sekft+sY7bTjSGtt
	 tl4MLiOio/eAoW/QTArhAgTBri4nbAzwCzD6xZfjsVx3F+BoaiFoeZYZJd5fAfUOhz
	 Snaw5hagwB0tBpYfeNZAkmu9OtAqUJPTX2a+MwWwzGnIN42vp7iO7v1wlL7VO8ngBL
	 4T4XjANPnn5MfrxK3wsfec//41emE9ClpL8in+s92/Bl/ZDf8QlOC7FgdlnARyx95t
	 JDe/MVQCsYkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE77AC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169187838868.5969.2132617166668901826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fd58e0e4892406d2bb74e6d6b6643b7c763106a1ddfef8d417b58b9f850a73
Date: Sat, 12 Aug 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691878388
