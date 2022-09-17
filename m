Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE88239B
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77945C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663441253;
	bh=9D2OU0kPfP0e/Opq7f5LgLZ2tRJq+h9np0Nl08HGDtw=;
	h=To:Subject:From:Date:From;
	b=GrKv53E/yG321qRJzdDNLMpwUpXYhXvVMPX9Dp6Yp3f4SFGz/8/kOSqeHRd/LXe6+
	 nIFEj+s/4iG9LvPMMSRSfjlR5OSnIcN3qpTBgBhMmrqA+h2Da2gFZBqjR3F2eF1A/n
	 Cx8EDN9dTQ1/gApsNmxriwoIjv4X9ivvcUw804xYt3I53Zon1BVKRVx6HBoxNF415t
	 kGE/h5NN02tboDXaBICNGO8r3A28iKHUlcTSz0nAjKMl6ZpmMCOHUet5VxZA6oLYCy
	 hfKAgcRe/pe19Im4AHAjbPbBlypnyGo2iUIuiWOsva3ZLn4BdZhSiZBOBV6PRMkhB5
	 ZdlHTvHzEUzsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C34C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344125333.2618.17122046038132104416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057a1641b0ec02324300ffca1504511b9f3ee670a8952eb2dc6591df5c6d1769
Date: Sat, 17 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663441253
