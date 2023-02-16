Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6298C7B
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3292C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676538066;
	bh=9bmD2vvYMICkmZHtSjrnwGREjProRHtT5ethGpSip/Q=;
	h=To:Subject:From:Date:From;
	b=QwqmYKKzcYgHr2wd/pwB2hfkm2d8sKbUui+G2kNM7CIRN178NvwElwsjVxvlXkFhJ
	 JWtnjawBwPyZD7HXJwZg8GIsWhwlVBaj+DFO0MYBMZsFWv9uSZdpACA1gwyobhAmcR
	 OgWkcG6WhfOPzoaDqxMtLWYKpPZCBv7BztjVjhDnuef4c3UShq3nllkgQGs10rhUK8
	 M1NUxwqDkmw3p0kTnX8HsddjK75bbdGzZx1oga7BHy8HlU3bFdXW/vFg2NBZInC4j7
	 9Sp3G2KR/xgkYabAEAuye9EchUD4yI2mWw1wDT0DLAwGfxBiLFYOGN1Y0ibWJ7xr6O
	 M3GfT5iYzVxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44B1C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653806577.7713.9001136937762117110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632b45cd30db3384139c4f1fe420077e8b70e3d97dd76dcc33cdf1deb47a6adb
Date: Thu, 16 Feb 2023 09:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676538065
