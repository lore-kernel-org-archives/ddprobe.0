Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28924C8C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687012808;
	bh=aAt1K+3xE36eG7eAU1IIcBWJ85SWspACRaYPcfkvyzA=;
	h=To:Subject:From:Date:From;
	b=Ly8Jt/WMiLib8jWOCeNLLotvdqb/xDkhXaRdS70ZvTD9lJlxd1rLG/jeoLPUK3948
	 MH/YkYEktbeAnS/FvgvNI7Fk2zGiYlMc1qQR1cFUVQyo2Tfto0S7x8XWc2yGb4q3xX
	 qPeHhiDKyty1GvwxZrFVk+v5HChpHgsSSQ4Pp6clY0P2/wLDE36kscFn2IGY3awiAK
	 rr3dhsMTRZKxIOQLpXA/e3sYysAyzGMzprGWngZbjjHsSk7zf42KIDisLteBWomLR7
	 XBX84Q4C6TppSAr1ncBpHeP/BDkMyyzau1+I5lxs+MkZ+NdfLw7B/kg9XLOESUVO/w
	 h+1vUaLNdTuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6316EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701280873.16977.543131220795800311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9fa922b251401708d7341eea73f74bb3e7bc98c8d3626e8677e455947e3f5a
Date: Sat, 17 Jun 2023 14:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687012808
