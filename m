Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD19E7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9EEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666398053;
	bh=5pJuZ7sKqmuDpXVTD5UVdF9gzFWT/X9iI9RAK5yZyYw=;
	h=To:Subject:From:Date:From;
	b=EkopGxqYLtMgR2S7Dp+17FB98i3vKfZ4M/uDOgmp8H5uQAFx+2JpuKeG/G2xqwWuG
	 Xr1TxjnMrBlBNp74sjlEWW+jNh3z9mpMM3SYgsXWIKWkpXxhUbIp1AyDmBIH/JwJiV
	 MkTAd4N2SY0EXS52drT6ECKY3J8wjb36YO2P2p6wTEPocc723zFLo4oKrwg+2fs95P
	 FZjy1KULPhNZWC0akMBZDX6+zHv5M/S130zQHl9kJka8C+K+rfDMGLJXoPuaUCtl8V
	 5IahiM/ei+8BLbbZRkUtB5IVaUf/uF5AlHMberIDo8cFdwNhT5N/uPvEIPxtk2KYRj
	 XCy7DsEYKzokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EBFC38A2D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639805332.5302.8926922745044599108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349065a068ff5c39b85f131fe5524b1ead5a9b5c90f0ecb9d40d7353c12ef0cf
Date: Sat, 22 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666398053
