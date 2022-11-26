Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CA419C
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C27FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669422654;
	bh=EyOCKm3v8ryNh2nVviyEAJ1RBACto8W8oUaHkVpgjHs=;
	h=To:Subject:From:Date:From;
	b=e52Wwp25Z0iNyTuPCJoXPvaVfZW2SDbnTSW8FVNIO4LKtWiJGtFes/IRYw6cgop7D
	 xCEV1t2jFY34176FoyiQRxb8xvnd2Oqj9EFs9JOA7P+f+Ti3f/AzTuUD1p0x1CxAEe
	 wadsRe/09bjRoNNHI+1gSrgrVyGEUCUfYMuK4/X0hNvDNhpq7Ua5J2wkD1O2m6ipRB
	 aiK5LJyEgwm3VypRnjgiSK6SVFyWJCurGCHQW0/+0l2y9Wh2jWhEqYBQLTl3oE/rHJ
	 0uxpte7FfbTPRm6IH78ZCW8L8BwTOX3XFuhvDGmP4ly9aTT7liBQTz7AYVfRM4plzr
	 XjIdqGQsJOtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64015C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942265439.24303.17927810289905587286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abecf01e2c5e53596d350b9d161ca041a252d0851f97ce8f11a56e82d4fbf862
Date: Sat, 26 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669422654
