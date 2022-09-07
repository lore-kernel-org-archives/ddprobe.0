Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F1920EB
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF16C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662575453;
	bh=fHocfu+efWslAcqQ3AKLrACCgW0fJ4sahzDf3bt3X0c=;
	h=To:Subject:From:Date:From;
	b=PPlU9slYDDaU5tk9BMAK57Fjyb0gRhbW3kmn8O9Xbj51qwRmYQWK6ZuqUkJ2PZjxq
	 4KqV839RNKqDcawtSlYqbNaex8yqFqcx/ECkYFBF86sOBatXXHKZcyVTWevGfs8K7M
	 ez+TCWkYRoL3bsG77vdEMboSGsdwesc3Ewu9C/tvcskTewdfVV+aot0xJ2uziL5xw6
	 0p6exyE9ShK9OExUqhfc2hRmeaToTUtVJBKuQNOkOBlCjNlkmLBWNg08XjeQctBPfd
	 C2RWyEzNE4Wq+XNMXY2da02vMDNYDh9GaeXeZvW68LLepK4yMXIa/0TEluDY2IGxih
	 7Y11+qpOJXhig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60265C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257545335.31683.15145297043362946755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a902478fea0fb7ca5636e9528cbc28a3bb4fc911a1544237c66b0cf2858ee0
Date: Wed, 07 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662575453
