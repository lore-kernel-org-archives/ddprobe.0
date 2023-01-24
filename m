Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F8322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C5AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674603185;
	bh=q/P7T5MByXUH6dcU6/m+OmNKPadpBkimL3Cqe7v2B9E=;
	h=To:Subject:From:Date:From;
	b=f3tJR16H3Gs09brHGuVJuJvX/soi1JpDSqYGkQSEZnK7PZFdsmrlJM+tEYD8Dj8bo
	 yox1KcESsK6cBb5V7V+/7fJS7/daOoNarOxLto9CFM6cchdculnlufSi4WhusTzziI
	 hI+Vi3RYAupLdKQHe8VJ9AtFKJpYyTO1dKENbg7K+ICCAuqB2cJoRmYL93Bi7m6UoS
	 hWvoJnSaPi6nK3V3FYn8g23Mqnuotbx0BgWdNoz2fVWDZz43t7fDd504FlYixIgY0f
	 0L/giTw5RJ2r0CXFG5VyzTXg58to5Gqk/tyvXSRdq7zVpxMcxixZODQJpB12PLenxX
	 tG4NZu9AeorrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87F0C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460318574.2952.17329179591430401833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ccaf6e8bd5720a8a72d5ef49974f925d88ea4b482cbe6e3109443aff2e1ce1
Date: Tue, 24 Jan 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674603185
