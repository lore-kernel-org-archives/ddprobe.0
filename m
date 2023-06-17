Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546131117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C611FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687032608;
	bh=irErQHjd/r0P1ldm4jN4z59+g2WLXUSwjM+7ow8OewE=;
	h=To:Subject:From:Date:From;
	b=fCsTlbzULY5Aq7snPWzEPxkaAuGZqCYEoLpq5y5teK5y7YOa2o7WQv4Om+mRj+iDI
	 raHHzMGzZhVdd17FbkyXUSqGXxJbY+z4CRWwwNA8eMCWcmK+Hr6K8txa5/1u64Y9nX
	 o4C/Ayoxp1o5tsSqT1svg5yGsHZOnuWV+GuRsgQnbajKQaerJa9hNEcb0WT0Vy1peQ
	 IrIGTOh8w8cEVNuMm2E3U6BsLobhXZvhsGrsoT/GoZaTyuiSGQJjnPNUjP8lWWUoBL
	 Fg11O60+VRZ7XrkIwzdp+YORFxKMaiQrHYsIe6DeEcCt1/CPaCFFVD2qIGgds33ChV
	 K/2gg5CztEV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AB0EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703260868.6690.15421957139764818802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a48e2037aa009fc3795c2cd3daf57a79a92ac4c1a2e66f8c1768a9e7e10463f
Date: Sat, 17 Jun 2023 20:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687032608
