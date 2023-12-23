Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197AF12E79
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4//hTdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828DAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703357896;
	bh=NdtAznr7aH6chrngymr7FOUTYcmZ+qdjgAkveHlLPPM=;
	h=To:Subject:From:Date:From;
	b=p4//hTdAULJ9Xe6qD5b5g6XKufrX1rBQj2sYt7+2cR9h+cddoA66UUzddaC0uq9Al
	 /1+04hdbomBTcQp/4F88Vb7RMc+5mFbwE9RsLj6GZJzs114SYcTIFaMwRgdSN1e/CC
	 XpJl2a5z5btXW1G8xUbUO2tZxSIlFz10OSt4oDMkvPllYMy8mPkzd3ixvAxAeWddyv
	 Bl3TcZxakGLKEKCgk7THKCqNbR5/sqhv0tJA8TBhjL0rneyUdsKZ7j71tl3Jz6ltYZ
	 Uc5SrP01XV9JcDEyllD2rOXuk1+2IL9GPyWcNnecSXf1dmbWBVj7LOE+QmAe8F5YAW
	 H+SNNbjPjP6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635E0C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170335789638.27237.5340542774923973700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00147e47ebc2f06fb15cc7c8e63a170878bb92d6694ce4f58146e52e92cad3cd
Date: Sat, 23 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703357896
