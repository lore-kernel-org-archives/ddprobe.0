Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A237F5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723DBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668223854;
	bh=G4Qs9OeiCISDRov7y4eLGKtKSIy5YEBhKdAkrHs5yP0=;
	h=To:Subject:From:Date:From;
	b=IHu8mRXQKJdUyw4Tc705SS0bYvesMQMwaZkZd6YJoH3EkUrBIAbNbE4TtbYEGanP1
	 VY4T3NCkAvce83SdC0d5rsDP8xTOJdqmCa34E0Av8bLzewFfhjxYxw3NpbdwxELv7/
	 2DlaIjZxILbJdQnLc8lsplvP5zBUUfi7midUo4K2Ji200AkncNyCD2PMCX5/NROElF
	 SID8dkeDoSkZWAghbV/cNhO3hspNg5w42iY+gkoAPG3x36ZFxsU7ohKPtAF73neN/n
	 yifH7fC3WxVWtcbVJjZCUd7d/978MGQIeROI+HaaY4mN6PvgDF5np7qu+eRMbdv/f1
	 cij2sPt+IHu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587CEC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822385435.15585.16259222021245295228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156e0ae490da9cbe43258ddc6f6f7dccd8d2c58fc1127ada83930fcfdbf8a29a
Date: Sat, 12 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668223854
