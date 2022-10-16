Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9323A1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE3AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665936653;
	bh=OEPVj7m724Cgrxz6SELTcorkbXX+drSI7qTv9P9VtLA=;
	h=To:Subject:From:Date:From;
	b=ojrzY7TqNHJ68uYcpoX4h9PNBpORXvw/RTOF7Nzpht5rTVWNyLcAhk7rH3avptQUI
	 CGEYodHKYL3Jx9uXVgsfIxxKD7kMbGbBgvZk3/fKRQa01OiNFY79lUkrDvjKQhEOIl
	 iI5ymB4mFjANbDnlQMXkYbzlXaD3uy5vUlNvbHeg5cC8bRKbI8I2mMzrwXsZ+5BTMY
	 H5tM6Qc0Pf3YYLX3eaAKAJ3yZ3xvARFMHVcBURhoeH/7qh7lEqtaCwB2Vvg8j2BWwr
	 vwM46JBZ+J/ZsGKWggkJHQhaH5Hs3tImaWAwfFYNbTymRTz5SrHgq5h3J6XI5UYp0/
	 knTd7E6EyLdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73C18C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593665344.18775.12304150608163677439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0fe08d1c874e8535b0cb75adaa082de92126882fc497746ce39dde73eaf668
Date: Sun, 16 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665936653
