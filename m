Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB86A3229
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE39C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663849253;
	bh=gFacu7YxPdDwS+ZBJngx0Kg5ylyIT4E2/agsR0I+rwo=;
	h=To:Subject:From:Date:From;
	b=AvSSalYdeskIu4m6YaZqHd4b8pm32zEZW47czWDaKnsCGIr08Qp3y7DnuPUhn+iq2
	 SEjTXDx9fjGrcNX6o99DvrbBs4Tx+UVPvnjRiA7L46GYG6Gtp2oV4QpAkIqZqjFXKx
	 IBj9FHOwFmr0exkpnlL3zDnNecQIg/vQizL6GL1fq8kvRtwZdW+dd0izIlcCjjgQYS
	 8R6ETq9jLPn/XWk3z1poGkg+K7EMVrWGDU1w2BlXrG9im0TAwjZ/h5JxIdwG8p6+0p
	 HQOz5+w4xiq75cyjLcuFBXQ2T0ThhpNVJZHx1TPPNfth0HwseixnvG4hIzenP76XW8
	 7gC02Q0OCgGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5678CC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384925334.4515.2965742780831127337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c4757d23bbf509e561f8a20caf2a5108c75a60de55a6544e5725aec423e47d
Date: Thu, 22 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663849253
