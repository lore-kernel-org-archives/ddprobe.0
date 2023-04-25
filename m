Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2C87B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26663C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682389446;
	bh=mDuzIsoa0Bhz066R6t1irB8cLV4x2N0wLJMyPYhZOBA=;
	h=To:Subject:From:Date:From;
	b=lLjLErOEcVBeQmP2XVNsdsvzsH5n7olFixN/aSUrxSW8DRSeYs1r1ym0v9hmAH1Dr
	 4/5/ArPSGT4uz53EbaEQxpNeGrL0By+gCnBxqhSw/Nh1Ra4RTt6JMRcMvEszMrGjPu
	 Fa5V+VFxzIN7N/8oZpP91o3mXAtVe4sDFpG0RFBiDbmD0liL0TjV7964jJToMYY7gS
	 4klW3zRdQba2d9lYS/4PMSU9OjQCburPnm+VuvpkXQSC90MorfXJXu+JIMUj+g8VmH
	 QbXTvF5TlGNZS/mZEGHrlfBmo7tcppKk3M8GuWybrVFCz7KoAr0oKcbX0e7yUdrbTu
	 lq8ny2n4eAAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD0FCC7618E
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168238944587.2349.7938918099361342244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e67aa1b840e54e7ede5f668460c0353a1598793f566554ac8ca2a65c013a429
Date: Tue, 25 Apr 2023 02:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682389445
