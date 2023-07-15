Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646FC6FCE
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA41C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689450668;
	bh=SGWMh7Jhz/mIZw/uCe+j2Agmeij+WGQ03LRU2hwxZoc=;
	h=To:Subject:From:Date:From;
	b=Bad4AhLbYxcfjqNe/1am1ZIK8lvRewI31SNkcHNmyfTmp4aNfo8Qf7LLabdmgQ0ti
	 wSTp5GTlaJ9sda5ohSh+paKd6gPCcPyXy1PGC1oQ9LvQYzWpNzpx+Y8D03FChzUZL5
	 FBlmUIL70z2KTiRJ4j5pmPfvAbrCXSMjBQ7Bzsps6jGMEPPLMNUuBE8PzT1oPwDJl3
	 xN2l4WaEy/E9K6aBIS2bmPU7HnNPXMYd+HQ4TYBN7/PwFe08iLUea4pvmO158H5rWI
	 4gbp7UW5zPVmvhp3KKV0wE4NVdxDJVHFgznz9YMhVste7i8Mwjir30A/+nKPKl6C1j
	 6H9KUhGhvv+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CE3C0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168945066867.27506.8513664820944250493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5595d2c4fcb39ed040beb5005ca0f31a8bb5862d020af3b2e2527f5b1964395d
Date: Sat, 15 Jul 2023 19:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689450668
