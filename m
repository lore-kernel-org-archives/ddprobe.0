Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D223200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E335C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661866253;
	bh=oz3mY7FKv0POUp2EAlvUbmXJT+HvNjDG193kTdHJaL0=;
	h=To:Subject:From:Date:From;
	b=S934uy8LBiAweFtdnAaQaIOieHBTNf62n5mrvV4jQ12tPb5bhmmbQjls0cf6PuPpC
	 9YoHOhRBMS/voDvyjNWxh0onLDCPfSQwC8zHqRsAXAFSMZmzidfGTX357hcY4CCd7Y
	 O3GYcv1MX+MBJ4+Lq2kfPJsnHjJjNRrybhKJPtZxouib2RvvjccIJ52qae6fg6MT+S
	 HY3air+BIuaKQGxFV5zwxdgwQ6TTdoouMl6mVNRd0W/iGucXJsjQm/myFyoLUpPElP
	 IxHX/zx4mGDolaKorNpifQgWY6Du84I5W48+HAWx5sBvqzbl9/Mi8qKgStBSqoRYDt
	 IqeYIHhW97eXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C7DC0502C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186625334.381.13534743631926948305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c570065f142413554e65d094ecbe72b61e0086641d804b94f044144155a879d2
Date: Tue, 30 Aug 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661866253
