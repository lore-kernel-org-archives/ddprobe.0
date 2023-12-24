Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BFBEBC
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK9ctsJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81004C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703388496;
	bh=MgTDPPsT8IYmSggjdrgOWcvnkMKx0u+nuVf3EPYcB50=;
	h=To:Subject:From:Date:From;
	b=UK9ctsJSY7T4OPmVxikJ7HiQMUxvz21GetBXcR+YKHaSciuzcTFmeRnE8Us083MJQ
	 Oc8t9FeK7O1bttqj6XNUrncvLHEyIy3r7ttRBkod4gTEpWvS7QxnQKHUChkcvMzrv2
	 m6J1Qv5EJ5guSH9pk5mCTCUl+y6Z0h2sI4aLk9pc0iq0qQM5oJqhSiz2P6CBMWS3hK
	 2L+KZUeSsE+jSpQcT2RqcVUXVyb9i6lqAtegwP/3arb6XabJwwmi5MvR+AIeqvPcEX
	 Vqv65slk77xb0OiiqM79zTsKJS/y8IKWCUjrAuVCS27UZ4s2QOaRlv1ITM61huXJYB
	 mwKqjsMiLqG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653F2C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170338849637.9527.7469413773992578784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ec5e4a7debe62d26ea59363e4616f081f8308adc5a93e420227490112da9ef
Date: Sun, 24 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703388496
