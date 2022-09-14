Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2F63D61
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4EEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663156253;
	bh=zDCPaiKnT7qa7GoDTtGzfbPznsWu1Xg1VnvzSH+T/Y8=;
	h=To:Subject:From:Date:From;
	b=D6QD8cDCcmJKivZ5LknA9uQEZ8BCVfrEMeWlKfOagveQcZildexpowMRiep65Gopq
	 d5gXH2TklRSOMWRoNQyGhr7blMmJfgw4CrU21eWs/c1NteSOEXGNKsgi33iG7gQ5BT
	 Euz79otScvPxSQzxSfVDvh7tSHMlBg+AUjwho+dF1yFG9byVlUsZiLOQW1UgXaGB9X
	 3eV57l7sxqtHGigqH5/Un6TBS3xnjq8pwu02SLRmxsXb/6cDPzTcf8AEPFmgkdZoMW
	 xHgFYJ8QpMT4gd7ryYTfCUkvZgLo79Ge8EZYeMWVgRZV74by8gDq1wNPKpEfUv+O8u
	 dl4ylWbbv0m0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D9FECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315625334.17117.1899864708917427564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a3dcba6728165a4c20c0aeb9ed7110467d1e51e0fc122b93e1d53308081200
Date: Wed, 14 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663156253
