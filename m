Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3094246AA
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 13:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 13:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677849365;
	bh=Bb595n4SELFCzGLbaWN4dfMU/zwsj8A+MJUgqghtSb8=;
	h=To:Subject:From:Date:From;
	b=tj4aEuKXLCKziRP/12dZJgIPmVQdAPx4p43mKcPQv+NHYM/H+DxZMHK/D7WLpmoJA
	 M4k6ikb4R0Dp9SW/84a3+MGYzdMWHLVdP4PWXgrgZebrWwNMQHRbQeCFzhWlrbBo7w
	 YVM+7+jm66ZGf62aVvHog44zXk0xEZ8i5Tf2Klqs3XlKn2H+WUDV/sQaG7T+ta8Z90
	 C8wfD5nTC0RXbriUKcHNHJsSmVkJraCsrCG6QBZUBEP7A8YTpvFwq6cpH3U+OIL9Lx
	 MfNzSJm8zc6Zr3PjqoC0/u9HAEVy9+UlHrihw5q7z5o6NnyySjj1/AsA8s3YrhIxbU
	 0RDR/jAJmbV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19D6C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 13:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784936577.26150.5311642709826525101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7215887d5995a00378d2be22de97872d1e555a73de82ba8f87d4b86d5f1d69
Date: Fri, 03 Mar 2023 13:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677849365
