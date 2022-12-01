Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FA2D521
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DB4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669918854;
	bh=Fs11c4ztcC0URPOcX483krpusza+5u5kTNaj1rKPOpg=;
	h=To:Subject:From:Date:From;
	b=WRx53znqDr3H+fYK+/8wt9w/eVVo2XL1ZSMzo8xJhmt1y3Drb+i2/eC4s0C5zOSY0
	 cC2oMCnkNtWqy70hA3vyLTKJl162bzEThbyGUdMcqL4zwikMS0RNKKQ4X/T/fPDxDH
	 VVKvFj8pcCQ2aV/AzUoFpckTbNsR/ZGVzi09fW1spYBos7Lkb9BJQuGM9JS8Ylm426
	 veiFiD/XYpFAq+y2jJ0DrQfEwM6v2tnHu7HvUgM6b098FO6eDsYh+WjUUWkfnQ0SNH
	 amIV4LfhJmc6n/TS2Fh1Lg30toOfdezYNpxOC/a5VM3btGfsHEfVYEL+VHBGfci4/w
	 XW3l/KGroVpqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC24C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991885436.14122.4251337171859200706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcefa725557eeae341ded6f83f6a1df17e18f8128a72343951a7a84247636d7
Date: Thu, 01 Dec 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669918854
