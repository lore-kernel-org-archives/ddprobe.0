Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DB4EEA8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05BEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689347468;
	bh=YlWP7X1zomG39du3Wc9mWPzQ0ogkWnRyfMWBWMMsakk=;
	h=To:Subject:From:Date:From;
	b=e2wjkPR9XDUAU0Gaw0xai2erm6SS6ii1hD5JHrLkAB05y80/YkEqvLnwI3VDNtd/k
	 F3h8R1pYNls8MxMed4mTWoDljEhkWb+oRT+12CDdlbWZvUFpvxSIOhqGGgL4OgssTc
	 Oaq4RwdRaTiKC1y6IUByjVNtIqfe+1omi/hfoCznlCisJtIEhN49TR4fAgG+ey7Bvz
	 yofuW8C6MGO6WUF+KS2NkefDkI6+KRDS/9u81CcRlKZfn7cSUOEc8GJt4RbgsNVcf0
	 KFxbZY5EGDCCfI8FQXi2+EwOvlSIyQh+1+FfSw6I2JeG9MGN6IPlqF9uNl7Oe0w4qE
	 H7yyLZGCZ9PIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE3EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934746868.13383.17427958889851249514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d9eee6a034afffcc51e34ebcdf61c2c2f8746a907ac73bcb57f595a40d3ad4
Date: Fri, 14 Jul 2023 15:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689347468
