Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E912818F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A742C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671842487;
	bh=ZcqnjsawYNDvEPoG3XpNbwwBsAgxNUB168Is5ZWpUVQ=;
	h=To:Subject:From:Date:From;
	b=REEPAdL1trt+q1Ax+T0nGyW3M7nuy0u2B7Xof7Um4NjxxG8BxeZXRcedxgKJIAMaV
	 g8bm/6LsBU/a2QUOnBAxX4eUy/4q69jAE6Uzh4o9bvTucUIeyQosJLmAw2mMRtP+41
	 QyTGe+Aene3l+gZmMUMHOsi9C4m4jhm2Bfb39NYhJX2x82lq3OQZ5arXDYYe7lFRT2
	 +Y18vf5WlvVMXLkXcf1Np6iBUekFL2WwPIaXdP18Df374xzwtQOf07zRiX6pniI1ai
	 yr78Be6ILGgamJnwUAkVH/0BdcQ58En17voHy0hlT9zJtn6hsfclXlOS4I9w49w+ag
	 00c+tIGvXGqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F284C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184248750.2634.4100729508720557183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a70ddc8d9a5a0961b32621c895f4c152b0babffbcd90aadc05fb668c22a75d
Date: Sat, 24 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671842487
