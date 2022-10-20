Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8E928E2
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2C5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666252253;
	bh=RQLAd1mduuysGDtMbPCFEUWQN838htCcNyIj/VtpXaU=;
	h=To:Subject:From:Date:From;
	b=qtBPe5Z2CGuTPfJbXpUbDkJSBZ1SKpSWJPChfAKqfMdMmdNYFSk/PowlVY/bzjnaQ
	 N126rFmfny8TO5nrDr1Z+IMjl1/iLKe9cNsPHf0ceyixGzrGr3LdXXW1am53LMYsMi
	 zA5HlPw/k8LTvEWyNSIcbE57yjr3XmKcLv2N25HYinP+t0qbosJ8N51EyR6I8cpeo2
	 WSAlCpgcgsghzbIn6Lv91XsiwAg1K/28J6k1IjIyqm+Msrnn9UnXRga78xXfEViO5Q
	 b5lc95l8GFS952vLesgdN/Yihj2GsAGHPKUf2xtV1spXqUnsJYQEOqrG5NMrqr6QzU
	 k6U0fOmr4gmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509D0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625225332.12026.16994678441324173120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9769a9e92c171c1dd136bc7753ca8ab5668037a283cdf1cf58dfc94b14935f11
Date: Thu, 20 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666252253
