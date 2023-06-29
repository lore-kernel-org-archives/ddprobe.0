Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E188134A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBE0C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688082788;
	bh=gpaK8uEA7sFuwKjf8gguZHzqhsVzEjV3NfGN4jQGP1Y=;
	h=To:Subject:From:Date:From;
	b=BQCZNa/JZbRihK94rVkQyABUMo+YSZGIC/7sjU7+vQcx8TYVDy6u4rLpYkBN1op9q
	 ic1kex/Jf1GuvH48/DkxKsA/3y0LNgRTtzPnaxkbdlW0FDepF1sUn04X6zviX5Dzrs
	 a6Zo1wmxSv0TMyEClol1luy0YCWB7dYWr2TeJKJXN31BbpAXLtKgscLcsSZUVjBByP
	 U5ih81XLtJ3TXyfQnPVXrFzHUlq6wCyh8a2v0KT4ZdeakpK+HqoQSPKb0SFdoEJQ3P
	 RXKJHB7PNgQil1beQ3VTLrO2bT+HNPUALRHoiagry7o+SKKG6NAzShMzqL7BwYWUWa
	 Qxo6+157nzoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC2BEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808278876.13424.13722644373482874647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529960e3c1f6d60d7ca0852cf1897545fe5db91b5e89a6afc21a72a91d286d1e
Date: Thu, 29 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688082788
