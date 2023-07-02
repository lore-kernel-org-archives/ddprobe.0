Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600FF369
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10A4C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688268248;
	bh=utEW1md1MGk9LuiPIvunGwN7xc2X3Jps0uLWxpHxRHo=;
	h=To:Subject:From:Date:From;
	b=sS206nvbGro32HGUgIorOTBduJN2jB1bot7AUXMXJFZM17Ms0dt2zGWSc7RkgLJA4
	 SK8y/+vZKo4kZZ8a57Ql2HcY8LYpwV9qp7HWyMbj8dLMNgvKbAOq68bwnskRE3XZ73
	 md1+wzTy1bNZBDz/tlr9ZQR/bA5jOBx9PlnQFu+pt7P5I49DbMBky7RFeObhGl08OU
	 2DNlbcWBKyLR1S96SJvJO3IFGwx96yczxmWCb68mTNycXb8bHerLorOdEBETkD2qFS
	 rXvAMbCKFg0uVr8rFP4nf82iJ6Sb1hP0KTJ1JNxs7IlgJlIh7evOapurkxDbXKb1aD
	 0DLl4Nqjb7+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B035AEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826824869.21400.3157956907433661309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c53648025bcd14467a655edd4366a2779f9c6fad824ac1c9adefa6ee5ddebe
Date: Sun, 02 Jul 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688268248
