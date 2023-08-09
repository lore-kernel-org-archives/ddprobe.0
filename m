Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620302453A
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D25C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691613788;
	bh=+LVmlZiMOQoOHGfy211gNOp0u0CgSg6bK0iDTOPKkVM=;
	h=To:Subject:From:Date:From;
	b=nRU3kqQsZrkOsmE0cbykE12aM+2qC0QVp/zcFtcW58VEe5J21lxpncrgJWndZ0/jc
	 g/g3ocKCyRkkJ//6+JwLwejTCpZ16xKw3WCrx3zpRZxynyIkBmXEftrWDvcBTvI480
	 Y0hVXExCrCMDeNCZ4NedUdNp3IeC1tth1YBm6e8chUAClgLZHZsjueu+MR3ZzVe7Tk
	 o+C38/rPscp2zUnnM2ot3R0z3N87Vz3yej4y0y923PrzWxYj3BMCoAVEL5PUCmAMep
	 6yB9UFj/kwXn8r7jNtWTiXIinelMsQsC0VF96vlFQrs4GlJzkIduGyaHzjQJtU0vy4
	 Cc4RrVQibj7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ED8C0015E
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169161378870.9305.16060034792125645688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c41986489f40a993983418b6b9cabb617a1c2acdc0940d8e615b543188e9376
Date: Wed, 09 Aug 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691613788
