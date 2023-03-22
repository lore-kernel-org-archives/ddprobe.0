Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA8C8C01
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 098E2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679500746;
	bh=rRBfJGQwsW21qKxb6EU3PLX/vzZTWAyyO+HcQL5d2SA=;
	h=To:Subject:From:Date:From;
	b=nb9tx4r4arAlHSBDq7Gu0gBCKN97dDdH/ngRbSI3mdOZQjzNFbNQ4E7M7z5Ml6BBs
	 oMYHtna5FDtP+8PnGYLQkPbY/q6aRkU/wD9hlLRmr+0b+AM3RL6PFEh1iHLYQvJOay
	 v9t16QXTfux6GjY1nW+lNRVSvQyEz6mpM1uKSQ+zBD5t2OmEuVACeR9YEW/l5OkWUW
	 jgEqQ7nfdjplsBcFfBnGuo4v88ZbEY55nqFRnW5jRTOtpvCepfttouFrXZJoJJLB/7
	 Efm3ksTBpNI2hVfB6LKwxHtQoV2cArRheJPY9ZcKGjoo4An0i5IxQ1wA0PxmgoDDWh
	 nKqp80nRYQlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE246C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950074583.12143.10391161625629593554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27b3b3e6aaee1c63c7d21dc4b3e37f6d7e9dea5b9fd9d06d9e1e7e207c10c59
Date: Wed, 22 Mar 2023 15:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679500745
