Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD912567
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD323C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683473885;
	bh=wVHeIdO1Jcn4rfrBCAxjJ5Bv70Yze2D0eBj4IzMxSyM=;
	h=To:Subject:From:Date:From;
	b=dy+v6EvFSTph5jw/OXTgnPJac5NS4BG1Sh6+tHk3kmwVJZ9+lOYxr6nC/toNNjIhR
	 KjA09WQdyUN5NFreEvXbyPR75nUnhleHR6dFedy5TCCrB7oUvvW7DJOV0aAaXN1Gl+
	 aVuaFmgJk/64YRmzAYfC6qrrMk1Tf9I1mjQYgE+kw9c/pmsEdPzNLWFu6EBODaWaaP
	 m6n+Ynzo4AypNU9kN6jyI6BjfGK477x745XmrBs6AAhKvlghVbCwwdIPoj7lafikoA
	 wLc1iLcNeDlTgywK1EWn13Bkx1A64Nkbx3FpPNhU/iHDzw6wTvjllDmMd89vL3U024
	 hLQLubGC7o4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF38C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168347388577.27847.3902001582216671555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b37f321bf59e85474bea403be608f4340a6c18745a8482a0ab2d531b5cbfea
Date: Sun, 07 May 2023 15:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683473885
