Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EE97E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A15BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664272853;
	bh=bfEM6wniEwjz32oCBqVjduDyVEXO8A3g70Vy07W5G9I=;
	h=To:Subject:From:Date:From;
	b=H0/c3cuREaTjjHyOHEGrvQCd9QtG+amfe8By2oLR+HB38+wIppER3qLY4C2SvRxuO
	 eCzBFIrmjLl6yogu2fEOp/0ECHPJxkzpkibmwI77TZKAiAe7YvRW7kCH9GZbRja1xB
	 0dxF93+Df6ZF/aoL9v2DdXAeGMGyOjCttti/lXPp6WPdNPgb6tWd6D2Yy9u2AdnCat
	 EmaciSXv61p3OR5BJXdhrrd7KHbmr2iB+gyeXPxomRjGjcJjHonQa/FilHR05fLLF9
	 KMreB/U3RyoEYvm8UM16R9f//d3b5rVmB5975MYsEmx03XwdfYQqOTCiVOnStmiddc
	 DUpynuqA6ADfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51632C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427285332.20280.5052934788860908125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31b7ca7e5deccdb1bb6bea589eaf02b5b692a339688136062817d426a3e95f6
Date: Tue, 27 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664272853
