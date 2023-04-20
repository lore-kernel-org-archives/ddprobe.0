Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6415661
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C4B5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681991766;
	bh=nDhHw6S/zNy2/XZI/0e60yn17P4/zRIQ5rjp8uc3tmY=;
	h=To:Subject:From:Date:From;
	b=YmU6EE18i8tM+BJE4DY1V/hy1WyVD7FhoNvtSyLqmCF7x8D35GWAn1j3u1MYECOQa
	 1H7YavkJzjbAhYsXa5hqQztqfwBm4zcvXusDb7Gs+TVsbvP1jDOdYTHX+twqSiUCOh
	 ql4Z9lekQpM2cteH0z2bBmqSBGtUikRj7MfjbCrQLQU4kuCdv2CNJBklBNV0zStSJ2
	 0c/4lev9YZLRHHGUSiaNuARQF/7A35AhhCzslS3pftZ2zNqrKTQNrfixfJIIpNtWEo
	 8UaVryGvlboFe3k0+0xlRaUq6S83zAijES1d6kRZ0a2caHytMcnwjLNb4uQg1FqHET
	 nT6DdKL5fLOTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08EAAC77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:56:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168199176601.23028.6999595061775928863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980d2b18ec84bfc1d1d453dfc5dc706a45bfc6a56aba45a5ac18d41b046d5608
Date: Thu, 20 Apr 2023 11:56:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681991766
