Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F3D20F1
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTl57DEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A56C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698849496;
	bh=InPq+Gcd3jmZlIZCbMYvlPENWkturFlO3Foodri0bmM=;
	h=To:Subject:From:Date:From;
	b=qTl57DEtM7nkPpW3Vb58HZa5Cf3B9ZWFDkeE07hi3P8XWSr4oQIPp6f2NNdHqSe16
	 6YrR3+1VM/gcwSUzOcwbHtePJ0PjLBFCqZ0UceXGEKx14Spy+yL8gKSD0V43vZpUFb
	 5GBTvPfJiC7J5V8QbiXBTIvGj/bowBSo6IIPLELzSidOWVBfbKuLLwQuR2Tq9lwA/D
	 UAXUijqHu0A3U0o5CxbSygGSDjSMGlQzdyjdMFYRtzqXHuXEevJKzWSe1e99aLm77h
	 Sttm1LXBvC58UC10P0OIdTlkUuhcnmhSreyoHHmGC4FB3C7X0+rCSpBGv7/kr1UHeP
	 AK7innJmo0fdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C51C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169884949640.20657.7137177642595579447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f675e5b85e09374f6f139c0da1cab71495ecb6c6ec5491bce5be1820136b6ada
Date: Wed, 01 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698849496
