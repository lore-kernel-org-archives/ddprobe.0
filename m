Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6C415A9
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2E3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661605252;
	bh=jD+cqrnD0kFMEWhYdoC7mPcNUVoPYnuhtjf+5dZH6H0=;
	h=To:Subject:From:Date:From;
	b=Ppnj5MUrXYWigoNPYA4R8qS6Uhzi/zesWskKDvRZb8j5sfBJFs3Xx8kPnrYfc/Eeq
	 AflaYSHCGsqReENp3fi8v+rRXPEfvbgYo4XMaqVuORY6u6ZvSso40Ry9D9BpZ0EYrx
	 C3AzvX10AWx3ZJ4GhLQNQ0EKODX7YV7ZwxYNFJ4H0mJSPaOjpyqrqb/5430u9elAW3
	 nar1zOPehCr2GRPX8dNfHQbopNjzMkGNbI+jblbRS+B/rfX8SjZOP/g5DYsY56OSmm
	 VV4Z++JkxsWa++S0mDdeLuBT+od25YKdsmS37GsSmAvUvfnwCkr7OSgUcuUjWVOQxb
	 CxNVxuiSsGkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526D9ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160525233.16793.16964796782791981947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109bbfbf1d088a0c1fa33ea105c6e98328061581a3a0feee073146e0d154c3f4
Date: Sat, 27 Aug 2022 13:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661605252
