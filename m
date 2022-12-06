Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D00180
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD45C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670285454;
	bh=XwxwAgBwneFVYXfvwFbf00+hOLgUYbuLzuzWNhQw7vg=;
	h=To:Subject:From:Date:From;
	b=is+6t0h632rK6yB01qPSE2In5+tHCH2LADLeQxe4elXJxDY4FtT7X0dd7g6Y0foNE
	 plfW7ulcBrsamvWb/SSi0bo6PvxrdZPpU4dnAyRd7cg6o8xMT070oZCPKaPGFy6E96
	 42KBWC2nsbGRRu3kgChNfAhjSbPrqBwujQ5ZNw55nRRL5EI5DEt+vjf6vxvWtzih1L
	 pM9ym6sUw4n6wLkHs8mCy8JLBKBjrSX/F/m6Xd0+NSxWjSqWkKiw/kxUqAo0HTu0nr
	 qPArYCl8jkULcYGwNsGa2GZu8YFY64WsMvXjRIsWWlYLCUswxLRL3BWc5dS2A8mWya
	 +OdFMAQDAyLCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59381C4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028545435.14217.5247099898560821751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba72ef55d57ee20e6b686824d73b0b780dc1f78348ce7d060b5c7843d544a27c
Date: Tue, 06 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670285454
