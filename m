Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB65185F
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVxzPxzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7266C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697356628;
	bh=gbr4NxnmF7DffJMDXGeHPQjJTc2D9FtsRv2dm8RX3Cs=;
	h=To:Subject:From:Date:From;
	b=nVxzPxzz4LfmkK0YmQXzRU0cm0AFmhnj/f27iu/Vu2U8+lNsUNxLPaRyh+ILNrL0p
	 KJx/49QTUwusQET0pRUmqcoyO66oiwxMEvnCs9oNElkt7Bu2eOI+eA1klIm1rXNCOq
	 ixQTntTtU9GowMt7mUB2Pn7QxtBz9DXI2RI76Q2EzTTP8QUYCGEPlJv3BZiCGLIDlB
	 nmCnbsItN8GYI3e4YxbKSM5qjLOKN6a1h8KxbWYgNz1XtkRyblKbNbDf7U/Rtnd5eV
	 zkS6hQFtNteewoyCzn92J3TV+U1rJKjV3bIqvNBDZKs5kdMrIt3x6xBbpqWi3U0CZ7
	 zAdvoE7mg+ObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F92CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169735662869.14111.15133751645665803937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d96d9e8125272cc4d3e079916a64893b1aa77fb7ab972531b6fb26880430cb
Date: Sun, 15 Oct 2023 07:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697356628
