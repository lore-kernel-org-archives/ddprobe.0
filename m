Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E5B139C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8491C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673077287;
	bh=p8VkTmU0G1qHU0GXH/vcDtoncnc8KIY3KB3Z0UurIpA=;
	h=To:Subject:From:Date:From;
	b=APjTQtf7FQ0UzQPPAdPdTCcPuAiY3mzdx+IDzAtjwJoA4+H6F+efDPL8WIBuEG9S4
	 M7twT11C699aD0UX1lVyZbCz5l0gVaI+3HUAaSmFicoo+Oj2p7fAc9svQqqhJjxIyM
	 BEjauSnR0T/6M1yfF1JwVU+wlEp8sAtwfG13kBRnsL6dDGeYyVlb3px0pFPbvUSmq6
	 IPqJAyhGIphV+5NKyVigA8n4UX9K5GexaY9QWVo6EsXXauPvmcOSz2kLxGNrVrJL6o
	 fb4kZCZSApBxUd1kigY9uCukLrU2BcmMtNVuzNK6b38DRMqRPigfo/cp7IqOvNv8nf
	 UHx6gbiPqXdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8467AC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307728750.20765.10096510875943625255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210d49d3f724e93256ac0abe7a10568d5ad010818704209b02152c3e428bc999
Date: Sat, 07 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673077287
