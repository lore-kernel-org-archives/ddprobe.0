Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5796FD8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBE1C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687006148;
	bh=oYBwpszl6jpH8bXYvMSyTGwIDSTvRxdR7UXBzSBBwYM=;
	h=To:Subject:From:Date:From;
	b=Ph+MnBSZc/NiBflNtjclBXmUHJlSLYMTDcUJKI1cdBMcHZKf4iXAZmy8d2pxILaGN
	 5brOLnJAm4eIDTEImvFTr9Mg+Ppm+V94aCEWLk8pouJFnbf1+ZU4WbG+APX1R3nxtb
	 hKOT6l7U8nc6Tkp8mYLrRdZ9LsdubSY6q5UVsd0CXvSzXg116mcSUeS0vcw+zJFjXe
	 OUY7xTFNIUPqJaDfKxui3U+JKNKemodaC6cLDMUbV7ZA3cQmoafNXEeJ8tcqWuel+m
	 hlJvwilxiLKUwuoqqzrvX9rTUfix0SqGj9x48b6ZNprNtZCd87Fd9viTTl26lDgQma
	 xASMBjHUq9Oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95D9EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700614874.19005.4560167977457847150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c390d6a321d518db4f047fedbdd577e64d64cfab7cad00f7149841f6112e35
Date: Sat, 17 Jun 2023 12:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687006148
