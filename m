Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4589722635
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E95D0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684021085;
	bh=N9F/lnMFZQ0D8Te7nxdPJr0D0P7VZMvp4PBGva3VhjU=;
	h=To:Subject:From:Date:From;
	b=mZq5ZXonLguh2vvjKW3Ao3CZIV8P8+Xh+ENaFo19AX03E/QiSiLdDyerNdHFLmUGY
	 SjD5p4Sk8tM0TNLazyEckFxxgWVhVSFfOmIJEvCz6gBgGScfI8uq8ATzN9WXRoXLrr
	 QLNlb24bobc7/dyJ6i5XuCHxSCw/e8HGvdgqoDKuWs9ww56DwYYeXlgHQecsAp9Qh3
	 +IQYms2WpVNv4ElRMDRKvH3qQvF+K2Tpv8gerNFnfIA6IcF3pNhEU2eaLhfD33Gfut
	 K3t27YFBazY8qssoFzskKOAPMpnz+kmrGP3rfspPI4TCynuEJEtOrPwkbHoqCmN/0f
	 s4lGWDsMqdMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3F1C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402108576.28036.2528438950551252278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674e0a99c37e057ba0aae4d01da76f46f8c621896e98d250c9f00e66f41f0b99
Date: Sat, 13 May 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684021085
