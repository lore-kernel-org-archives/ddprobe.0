Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A7D184
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0323FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681776546;
	bh=xYzIH9I8wNyPKwocD2JJNh2EMnURIqzI6LOca8yqNWQ=;
	h=To:Subject:From:Date:From;
	b=LNpmovjJrrs4XW9acJK9H6UNZ4L8BSrAJmXuFxhdCeXjt5DyGWNR+esFPEUrA0vjQ
	 sa0WRBRrKQZ6bRUk0cN0hDXUeRfwbVf43D3iWzn3KAnoPh9uyE5XEj0IdSCUYZOJ/s
	 XQO2IpUTcpmExQBxVG1jBWCEX5Tcn76Wk/ySx8nGt5s1XWLEFY6aez6KOkMji/aJG8
	 cqYZ+CworId47HZsHnLpti6hRtHbLXx7aPC+MAOM4t50lTigJ5VzWH2QpqkAMtfx0z
	 7r1X/W0n5EG4QNlfK81rX7vGweGMlo5jGC8Def5BdzD6nyg6y66ReXAeUqTAgU+K+s
	 LkG4RConqxfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D64B5C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177654586.19778.11826464317167659802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c17212a0a2bca3a9c7e5a09c5f2e3fc2b1f9ae36c7ffccea02e1a64077d02cb
Date: Tue, 18 Apr 2023 00:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681776545
