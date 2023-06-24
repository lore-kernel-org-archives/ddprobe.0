Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DD51384
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C3DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687612988;
	bh=cmU4YZIGMpKCoeUgR4YNkt6uZkjV/FvdStmNmd9QbCY=;
	h=To:Subject:From:Date:From;
	b=fnFTY9Kqsk86cFbyufkuKWcpMCmNpIqPGVaQzwTNxe4eSr6h+YQXMHCJQKNugxkoN
	 x1RZo3qtnm/7QwGI7WgQ8z5ykF01XuuWXlEUdUi6BJbHE5xGSE5Ozy1BTzAKIkbyWT
	 WQier/TjuAIuBlWH5jHz7ZyQLOMkANrSg26vPOybeM2+QD4NZb3EkBdOshoV4XT8we
	 3SXm8P9gIboqJ0Vf/t8XYFg+dUPkRXl7fVxgf/EgE/9VI7eLDwVNe2hEJ92CDejU+n
	 R1YFkPh1yRwEyLQSTCWKDmtIQRwYotX1vaFSbpxRPrCh+qFWRCPRuFdTvtwzL5mlFy
	 jamvFXm9dHTDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB928EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761298869.16678.12666775933553550450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea06776f6e26423389fff3a39a4572123dcf47676384498f514d0f3d3bdfc686
Date: Sat, 24 Jun 2023 13:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687612988
