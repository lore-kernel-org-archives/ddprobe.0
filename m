Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C41136A
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 01:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A3FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 01:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694739908;
	bh=ZF/Z7biWOoYI2DS72RULrGaO9UOHQr151/YYi9xV6BM=;
	h=To:Subject:From:Date:From;
	b=rX46L0Lwd01VYr7Mar5xcfaxXFp6QYsXPrMHXmTT4pE1C5sHYRXNkWJa67mlFG7XJ
	 x8zSgC3QsAmAxF+0alLSQyRS8hKMjHDuayipVSEY2H3luU+gaUVEBf4lSosPfCetJF
	 cUUoviW1NawttszHfrkuSsHnEuTZ3SMc0jST4GJlR3jSTtH6bQIuc3wxpmoIzL+Xs2
	 xnJA3KgrP2liXuyketUdyIF9eGkAbeq9j9XZvXnPl5lHUKBsPWAMX0cPOXoBdYxIFM
	 rOPP9tVP4yERunEOhXgwn8iGVeWTbVvD5gkFA2QIZDliZXhDeyR76mmdpOvNySk8Bb
	 xVnSbv9T5XOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE51EEEAA7D
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 01:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169473990870.14993.6409172159661832973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78915e3a98c2111d3d507778c3072920fd5674226b225e2853dac15b1b187362
Date: Fri, 15 Sep 2023 01:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694739908
