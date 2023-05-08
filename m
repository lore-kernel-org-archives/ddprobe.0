Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDDB320A
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 03:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED357C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 03:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683515286;
	bh=7JxlQOormjcTByf7uWudsBarD5QDF+61P1LbFeoKHNI=;
	h=To:Subject:From:Date:From;
	b=tZY9oOYzFJC2ncoqRKb8i4WGww5sp+ESRQb4QgkbXVAAx3LY2cO/4QqIN8b6mM85w
	 wJhhVhZiowJ9tHBVoWXDXJER+YOB2cRL9/2+vrvcRjwrtXmZB1oHQwZuUpaHWzECrj
	 tUDcQ3TKVPwUrbfyPqpFN/YipChYJuxm8dYw6ZTxVwRsmfTW8B7yVegz38hEV9VWYS
	 9QKnUgbVKmhUjL65C/xVuYMfXC+59vktpwj6ENB/cKg1UYtrta47ROxRseEZU3aauM
	 qmH1RIENIarDjEammEpTCNDYCmYiEImIp334PypsSmDbPe01SB6di9tEs7FQNnX/9q
	 cojQvFq9vEyNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA2DC77B7D
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 03:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168351528581.18410.18150997611234841276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130cf30417231f1a44b6db8a7eadd5193a3dc5fd303b77a8cc95966957780ba4
Date: Mon, 08 May 2023 03:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683515285
