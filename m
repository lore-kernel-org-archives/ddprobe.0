Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAAE7E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74216C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665896453;
	bh=vWi8Xr5roThx0qZUDfd797+E3COJnWiuHJecEnCB5to=;
	h=To:Subject:From:Date:From;
	b=PiwjnyUIob+cIk6BaQAFcZRGqE8HjMCVdS3TfNSWXQW6tBYJC1j1l4KSKHtiUBurY
	 9YuAAmu4B2oM6L2bvbEjq5ZQ0+xU7UlyEgk2atG00MsfL1wQBFciHESm2BiHrvBQCE
	 O/LGSk8O/4tT2Cu2mvIvjHHYs91Dq+hO9cX0g+M3TDGNfiO3VSVlrWsTfF/6P3Mh+3
	 UwhQ6PivBDXJM/E6CONiCoCV+dSHUzoKbeP0bEkstaOI2dZrPYjMFuiMjNnYpN58ZL
	 EkpcowZLNvkwrAOBXnX7cWXl80HPwn+OmJv+N654OhfEVS6kAYHXpcSdy3sbU2kWPN
	 lzPejoIUJW1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545FDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589645332.32155.16164487360421828055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eef08de6da01a7e920eef72d2da94e2ac82acd2809aef30afeef35564a6812
Date: Sun, 16 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665896453
