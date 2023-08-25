Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDB1174F7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC726C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692996848;
	bh=18BagPT4efWs1CxAOb0AMr8SHLxfBu76F0Va46io1jI=;
	h=To:Subject:From:Date:From;
	b=dsrb1pztPoWxhE9jQE0BAmfpkJCFGu+hEc+H3MwRcpgpDtMuPjpp3nCkJPH9i1JdS
	 GT04kYKTQdGnO0+Oyl+sdD3m4cqSJEa7F3raPovUpkKP8HZzL3cca5OfAjnSGbrqvO
	 H/2sLoRAjt5SQk0YDubx0iTMey84sP+sGXrjhy3OZGFRG2lw1mFG4ykgv48PHQgYBv
	 Mnsr/wnlBjAA0IgsiSTg/+QS2LflPbbcANjpUiR1nN+6SgqUyoF0g89JUHD5/u+VjE
	 dMhQx1l2Oa6UDxdN1YU7hHYbmsyAvvZ5imn+mCYrxwSIPy0x8b/kI3UkDsz2MnL0If
	 Tm74kph7Swc1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9150EE49A0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299684875.30494.2935514266182453965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298388945422077decdd9402560dd39e32212ddd480d07ae3e689848928663a1
Date: Fri, 25 Aug 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692996848
