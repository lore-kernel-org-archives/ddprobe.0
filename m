Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9D52772D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1554EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680038586;
	bh=Kl1cUifZ13+MsIlXwe6HPsgGeZrkuWBUEEQkkHueJ30=;
	h=To:Subject:From:Date:From;
	b=rs+2cowX6hDz9XlAbnUpbHrgK8/2rKwmJxISBWVVCzDSZq9sJWmMFTpIcZxNHUChh
	 qIk4P5fXKvJxNw4Ot8RKqgo5xbLh6oUhiM4h7xu5vkz2/GXPW4l019QBQO+kQAeyvr
	 IB97mg195yyXnsXj2buLWWx5uGBjRR1jMXMAw1nxreAUIFCrqdnr/JdPX+KOxnyF1h
	 p7Jk+K4B6du63KgdoOmFmO3X+28WmIqC1WgKRtzcIzHDPo+nvN6epJiio8pHwSwKzU
	 IZwkwKqc9lpMAq6/Bo+O+QC+uiaG0Gb92VyD9ginBrZJn9eLDOljmwPURHscxZ8yHW
	 /WP5Cg+FZQ++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECEBDC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003858596.27160.5419957166050423756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3ba88c46a74b2ea25ae117d989bbb85d5c36edcfb07c0850525a6e719bf8d4
Date: Tue, 28 Mar 2023 21:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680038585
