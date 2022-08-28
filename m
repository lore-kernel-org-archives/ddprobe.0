Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF374290C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777C6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661690452;
	bh=BIv2X/ijwDGdnVMwFHCS4+v/avZIi4evxhCungeDIqA=;
	h=To:Subject:From:Date:From;
	b=a61FilN1vuaQmhKnqJq6IfhJFk74uFtZpUFVC8qWb7NTgkp4QL7NOK5i6tC8Ovz9w
	 zIoAwVYQ7m13NqCejuPQtBEko4RvYDBiMw2saj9MohbVvRKKzTP8rQFSc5u3GaRekG
	 oLQwRnLhqFSBbHK7zeY4va8FXPMpKROdGm1fy2F+uwowwgWClWo3hi83nMcariwLOH
	 f2Mev8Ws484yhO7tGe6A1N8iSWAn4A74BgG45pxQBu8GrxTF38betXSnuwxsyDObaT
	 uYE7l92CnPXkCIuNQzpT5FdNoFsYVxCSh7h6fpIp5b2PGlU1VyvMW7krUxPR88M4Xe
	 MqdgxRSFOC44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6EDECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169045232.12082.17488314178351445653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df61918cf253ce9e9c5312bffa5ebf7bbdd03e6eab439185ef3b6145a4d1206d
Date: Sun, 28 Aug 2022 12:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661690452
