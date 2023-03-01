Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3182D7F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D91C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677631565;
	bh=/cpxm2YsCLikksrdKnACDyQ8akS0l+ImbNCeqyoCmlY=;
	h=To:Subject:From:Date:From;
	b=XF2BmaMbiC4acUeeO45+56heTQYDcV+e7KdP50/bgEYUhD8Sg1gA0SuHCRllfs9/k
	 xxHsYqO9ine8ElFdrOAC4O4Fl6eYG3b7YwZVJ6WUsgZDUy0uQADQkLG6zWtAZ0ogtQ
	 taDFyjS0xjVZsEEL61C0Sq5LERegTJwOXsxnPnbGp3OgAkUqmf5RCzHjLv4XY3Z6gI
	 atscb8D7lw/kYBZ2FlXfzNvm5oJ03H9uX+1jnZxbfRd6lDJT9vVBSKo5erLUVTaEpn
	 KvLUI0XJeFXM52PmUV7itrodYGKf5yyBey25tBNFuMgIxT1aXiF5ELwACbmzOrHiPV
	 1KNYjIBolI38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B14C64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763156578.13823.4481429857892473600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f761be6423291e6109356338c903de562269e98e960ff5c835d50d5247edd87
Date: Wed, 01 Mar 2023 00:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677631565
