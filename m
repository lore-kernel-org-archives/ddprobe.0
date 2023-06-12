Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D8522D44
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0937C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686607505;
	bh=hwGzFEbMmUMJuPjbqTUTIoe/xsPAOuHUFPWfK9YhL4I=;
	h=To:Subject:From:Date:From;
	b=c1aiKlf3a/KYr7v64HavPOUCdctF9eCYBC7/Mxg8jP05kHGwXJ6Le3NXypdEEv9sN
	 gemfB9tO2eO4fek46+K0VFMX0Pun/N2qKlAzyrlvO5UDbILcY1Tw39ZRyM42J3/dzO
	 cUWuSM/9XrEPx5hU+bGPlncfcXRwOhp/vD+Py0SmcBDC2jPknwN95evWp0J6rWFtDg
	 z6a1/OpcRAv/00ikyhroZXEnEtVb3QKMQo/UXnbpB3n3R9rhGkVFNnrTNDnmabpwaM
	 bRR+zHoclEfDjUJB8G9T+QGH/G7HwTzaPYVBA/7vyb/A0PbNRwutHMg45LRzXEH8DB
	 kEMRQYziDtwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6764C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660750573.5300.2450926394733976198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06d89160b0860f702fbbd7bd680d5b151936e49e6bcf1ce404a0dc5d8b20708
Date: Mon, 12 Jun 2023 22:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686607505
