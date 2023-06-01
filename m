Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFA513AC3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE24DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685638565;
	bh=BI9M6htQeQpPJODyUMV+Rw8OswyopBSEa0S41fDDi4s=;
	h=To:Subject:From:Date:From;
	b=UTPA6FfyKanDpM+L0PZxKKa1SXWVPrb01zV17u3bWLloHiFa4bd1gc251ocCOIQK0
	 z8mjAHkTYkA6Wy/o33C3VMpYk/OI7peAGQdjtFdUvs0+VrGs6Uz/+Haz4/LCzZD+/r
	 KhzToC+btNliAtBkeNPd2DwT8itk8pr9PFD2ApUN3tysKn10v3I7a3UrWHjrsGwrcV
	 Ti7dPfVP4DQJe/vC/U/xtCol7ev+8Cqg6RkZlIEd24Rca65X1enkQxmz9+WyXauTE+
	 as6AHXNwJ2gAI/2G2q2YmONcVMzwx3ZpRxkRjLhsx0aDw0e6TzeryYn3bQcVJq6yAK
	 SS5/wtt1Ye0gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A58C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168563856573.14923.12439187423508575702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65a61c946f15233276fbe233f48b31c4866e2f406d2a2550da1b3c3a2fa207b
Date: Thu, 01 Jun 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685638565
