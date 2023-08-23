Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67773C139
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC380C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692811448;
	bh=V44d7Yy1WUgMZpTfdY9yWKjGoDsknl7DuQuSvqsZsGY=;
	h=To:Subject:From:Date:From;
	b=dlB0oXOBRybkc1Lpg4oC3JWyO0k4QR4nNviopAwEztLL748TnlSxWV1hXBh3sGLIT
	 nkOjHNpqwzyDpGcXyavZRRmT7Q8gt3c+/rMkZCW0hMYkZGZnMrdWHHJ42h3KLhD+31
	 RHzb7NGrFwzR5NLVcrGlyx/7IqCiqG+4c/p2A1D2N7pJvErmbDMdhivqO8i0fl+DbB
	 0yTkYpN93cKvmumuLust0wWiQimGF2Qfjqqke9FD7CFcq3lF8b0ij5cfAi3eWieMRd
	 7Qnl7p3u/lL7ggPRl15zdwYiGGRMjxU0fwcEHB6TGW3XMMEeyBJBwz1ghADwDjfPmS
	 EZBxb4JN6Vaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF8C3DA66
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169281144869.6050.15132821957965384338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53976db6f8eec03be96cc2c9ff78e9169f55c481745d5bc8dd78532dd49e4cb
Date: Wed, 23 Aug 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692811448
