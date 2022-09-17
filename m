Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB175366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700D6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663383653;
	bh=rMQFdMPdeVuaxUhgqi7svGwS0JJ1W4Z1UKvUBnYaxRE=;
	h=To:Subject:From:Date:From;
	b=cS0xLhLoq+bhCSdIAg0HrYzBZjJw/zM44mlPJgkkiHKiuqT9F61Md4XoB7GWI2vP5
	 UnYst/Fhar6rI5JoEDidWV2KmJujY+4ND+LIzqoWom8IVtuHqMkDzvfb0VMoA07tr7
	 DP/PoCCeBjPQksU4w8z8PiAMbjyxF2bI9YsrWxX/rYmh6aLI8RSkz09lecfA2saPmp
	 rX6/JagIIivLao9W70YKpIN2cOAC1kGeMk3/gZVRPVb9wF66Nti2Clw18Zr4GUAThL
	 u/R3GhfbDMwK817X3i2AlBluZCY9fJZO9H+pIwu6rYEjS0K3xiFkTdHAYrtXB2aaw+
	 F2qM8kOXwLh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57071ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338365332.904.5191052445083888703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2875474df854f2e71a854c941027a1cf1ee2f0d2aef0663d254d219998cd5c9a
Date: Sat, 17 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663383653
