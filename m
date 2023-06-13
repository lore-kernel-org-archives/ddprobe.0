Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7345E17E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F25C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686614705;
	bh=xMX2DQvKCpFogt3IIXWT96i68nfpzWlSiHBHJ8gZoLs=;
	h=To:Subject:From:Date:From;
	b=E2+485X94TVkcgzxEltL6YrE/G0SglTSpLr6vtjnLPmsdPj+BnWFEY6aHw/9c6+uk
	 VRSbh5u76zQ9rydo065iaPCCzNXA5XeBNHCsc0x1kMUmESPbLaRKtb6JVIo+Hv3tfV
	 GgXQtCGYIh3bInwgqBlHRQTx0JgLhQw/Zlqn17HbffnXfbC3sXsFuW5MK8jceNVKKO
	 zPAR69Wwse2OsefTooor9YhhejYpETP3L/rUO6QMfE9D6qZS1IUpxUEH/wGezbMxXq
	 OJYjeFchb47gqVlIhda5GTDHdFguIry3qN0JuXQVyL+AfxGsZL/b2kPHW1Wgy2PxrD
	 xQS0QI+RlxveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ED7C7EE43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661470574.10585.14315791036075007892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be40cb93e74f3fcb379c3a8360b411cced182524b28ad1048ac43f687a38653
Date: Tue, 13 Jun 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686614705
