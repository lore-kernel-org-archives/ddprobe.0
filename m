Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD688F4A
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C5AC4314C
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667931054;
	bh=WohMrUXgFJfT25XqbopsHCQfq7lRYuNH9atX8B0F91o=;
	h=To:Subject:From:Date:From;
	b=ogxoGVkDXS7exBepI3Xr3S18m2pFNcpebT0KGcPX8S3B2QxAkUUzpVIeIbwyGg6cy
	 WzA7nwktdq+dnf2b8ACFW9l2F6nf4zKU29NYebAL5YvB4pNoX3ClYvdjemnsdyOQWM
	 cKFZhznkx/+21xw4YgKxycoyrFwW58lspe6RwZBFHTs4l2hYcfUkq/ObFOvBhhSD3X
	 iO9bmIRUUH43Xw3QOjNVGmO0ov/xz2pjUefK4ifRm6q2AhMRBuU1bHc3NVTpS/UDCX
	 cjuHsihKbD0ntYCtxgOpM4JkLjKzS1LEYFVV4644Y6o6H8ByIQOUXo0lS21ZXRbv1C
	 SOesbK1EbRj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5304AC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793105433.31339.6745112227681432685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec63e369e09bbd80df850fcb6d37388e1c47e7ce3a4788a6533a7623f2c240ab
Date: Tue, 08 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667931054
