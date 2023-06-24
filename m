Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A9B945A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA05AC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687635788;
	bh=y4TMcgRjgnVWhVktQonEkHwBwqKtr5MFa0er0SKGe1s=;
	h=To:Subject:From:Date:From;
	b=VazekDGvFE/z0Op4aWR/fz21dIvZTD83vfALy7KbD5ObrWyRJ1AdBQ++XNC556Ica
	 ttIoPusDZ7nZjGAgv88+KR/dJ9TEl+3in70LhnpBsWJSt3hcq1S5bhikB5KF8hJ6D3
	 nSLPhfSMEjTtvu/zpK2PXA3LqYezVF7HlZUGMDnqxRBfN3dDqt63XSB6ey7KHbyIFY
	 yJBLtCNXPRNOXuXu/BcA9J+OqSN7AhIGC9uGZTQRjfzvnyDAHpc/Sx5zLsNOPr6YzC
	 lk40b5xuCR6XHpT/8my8Pv9RfTZxfySo/NpwhzILxDpm/O6Lf2fzVJwoaK2jdkg+1n
	 UymfdayNRZXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC69EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763578868.24276.5763710205249441558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fda9faa89ca02e7960bc671cfa3e16702236010a9c92bc890e5d555bc638d3
Date: Sat, 24 Jun 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687635788
