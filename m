Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20C57F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E12C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662883253;
	bh=pMLi+hDI9yhVsd+n+h6lCbw/0a9JxxAtQgde8V8A1/U=;
	h=To:Subject:From:Date:From;
	b=jgHLsBvkzyCQGEILK1jIsOOq94uZ9mjdw2LdLUGKXqeqoe1JKoNEjfCqrWEgrLarA
	 wgtr+gKGnuvh8LF7+KfW0eOMEoSTLYU2Z+Bm/GikTBzg72rvRIi7IxFPM89r2HMxvT
	 9J7F6CY8Tm/1N4X6TgUHlvb0eCXghfaYw6Gc4PaAiWs/sQ/zVC74Tf9F1lCJDpTzm7
	 7ZR1uJgJYyOHKQMkvcQrmIdXi6iG8SWwWnpoo6w2Oxf0uENgtVk8ONF/RWMAeDjC4p
	 tP2EY5bBzjTrY4/ILJLSmuVb8jZuKApG5z0qgVoUhd3GTpXOgl8QVpPiujLMfzHVeC
	 oaZKosEhpC2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58126C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288325333.24789.2644098951009790351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a611d88b3cc4c2c8d3718117195fae910c1026d69b3c1cea2551942edd634c
Date: Sun, 11 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662883253
