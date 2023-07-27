Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9E727132
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA98C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690494128;
	bh=KjyPbWdSZBmHvAF4y7CQUz/W2KtlsYRdNKc1A9TD8EY=;
	h=To:Subject:From:Date:From;
	b=ZxFIVrHXF1V5wH/HYTk1Cr+4VIGi248Ji2M6G+AkJamU4Yfv7xFt4lbkDchHiKwGI
	 HRQ7A4GH/Fvd1TSoAAHhc631vD9gu41CiCPTxrnfA2/nf2OL+/gWLVCuB4I77x0xmb
	 kclBLCgmxT3QCsmzflFSIRyLumy5wnUHKdRP2n1GUpgQrISUSF9f67FpKKzQw4ZBZn
	 d51g8k3I9EXdNslcpCKU9T0Kl6ExLngcMGjxTpyqb3LWyMIxhVW1Ypbx9RfOu1P5/v
	 nnZZJ/y1edGtrpvQNF7IhKGo0Q18zONrJ8pSDeEhHskV+gSxvPq2Og91UJrd8WyQxO
	 ISSLsZERb8rWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE356C001DC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049412869.468.12097855411145232021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba481b8d2c29e9d7b88cb01be6fac9b64e9c0367d46ae0f48e4f9ea2c7650c88
Date: Thu, 27 Jul 2023 21:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690494128
