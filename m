Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0429B17EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E1DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673476887;
	bh=4cOtB5qmGQ5pYgdTCGuxSvm1RlxcGItY4MnQZg18rTE=;
	h=To:Subject:From:Date:From;
	b=uK5y0Ixdp6PxHqQeruNygWTCidftKc+r0pHyKpIK312jbveIr3gJQco3AyadE4cmY
	 z5z5uLXYwtuzVcAUOvAE7Ynn0ZN5wWTXrBtIQNpm0fmCtuhz9eDo7Qs2uXZvbbkL/U
	 TbFa+bG2iFJ4ibZKd+wrT6WVDj+BikmCmtm3oAqryjLl62k4dygyyCjlaUauRowxg7
	 8qBWyG+561giNkSkXd8NilGo2SSQSH8jo/ov06qzKCW4lLssoJlOUkjDHN08nICFx+
	 m0L/zHyO1x1iwVO9Njl2+vYsGMBOvBzl3eVtn+FULUziv/O9sJ/XvU4cc0Mox1Ozfu
	 UzYzk/eaa99YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78E50C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347688748.5621.7891790416267989090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9be06d9c1c6a492b33efcc0c0a672c418c6c1d95b504679a1ce45c5723c444
Date: Wed, 11 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673476887
