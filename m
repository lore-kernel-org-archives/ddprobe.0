Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8F663A1
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liHNSCb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0981AC433CB
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697696293;
	bh=7lW8P3rELtCI5PSIb04PWKZ2Ug83nJhVq55r6ovrEeQ=;
	h=To:Subject:From:Date:From;
	b=liHNSCb2sNIpw8YzT/QWzYyaqegR9vaFghIwiOc8Rsi9N8j5dU/Y0uNormmB1rYJM
	 QxDf/cYmAVgQBjucDctRdlK4bo0T+wcYIqqQmog/F0W5TMmmMa0FszFA0WEn83eKc/
	 /CnnSJNhppWrOaYH7jE5y7eU0VFCcBMVIeUlpmAaXOsfe7H2DouhFCBCJcLk31viev
	 XPmkGA0wHgBIMRQvP4gO/3UM4c99t/dD1d32eZoBhQHTI2yVJBNhipCAizXvYRrQ6i
	 nIRmyo+PlOFFSqc60FlNDFUOV94swgC+vjG6ikI3x+2zGPpPw/fSLetdSGTrjDhdQk
	 +KgI1gLox6+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB38CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769629289.10098.7660098393320393654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528ecd93212917e09d911531005944ee4c48362d4725cb831870f2c58519312c
Date: Thu, 19 Oct 2023 06:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697696292
