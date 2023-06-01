Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522F122D77
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B54C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685636165;
	bh=Onqlu7JWBiDGnH62DF3eRVMcxcr25kRcYvUwD0kFAoY=;
	h=To:Subject:From:Date:From;
	b=b3QdYkH0GR7Z/b+otVp7cWsEqV1Osi+sCX0svHMrVJR/0dVs2me5ddV/YAK5wH/fs
	 hTrg5rmFqrL7/73WH/MJ3WG+kSUSYPxI85Z/alvKSJ3eG7rTKUhYTxYJ0DIGjcLLHz
	 trPL0PH7/NJefQGlulD8BzKHYUaoHTyhy5j1HWjhGu0ZQrOdABICc+FdTDNKWqCWCE
	 nscNzqNZ1ubOonMTzskwFLqoeboj7luKkUnMckj2P05KpqMCUIJPUswE6B3Xbklrph
	 9lgj2RuXgGFnT2QY2fubu+9QJ2pow0oHT1nCmEcJy3hRQG9XHLh7peRqUcFj8J09G6
	 He0c2TKlSI0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85E4C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168563616577.22434.11513023837463267804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e1e80fdfe3378413ef64d7a1aebfc4b0a2465d1b3401366912c8827e6dbb5b
Date: Thu, 01 Jun 2023 16:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685636165
