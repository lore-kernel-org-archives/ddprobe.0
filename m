Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EEAEA1
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 07:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/tVDHDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2815C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696576628;
	bh=B7tNrHKIBHSZApRGveTKF7H1272BFfm7t4MDEThe4fw=;
	h=To:Subject:From:Date:From;
	b=D/tVDHDOdAGDsxZIx4EwTogYoUzo5l1dkHdANsN1sYI/MugI+xUKCjPQll5dZe9Co
	 UIgql5AguZsbL8+9mdE2UdwIwqRPqMXAg1dOUXklGFmgIPpvJ+YVHACPUbqIlBjHzB
	 fpe2IfCRHcDF7Ne59+r/PQxLvZrrMOF/kFJ490OZCbYi/Gpm7cF+xaBYcZ9LpQ3Nvv
	 4WB2n4DxEqlBBhrdQa2dl1ujL+ez8/f+2uISOtCF2WQY+d3tUFdGvdH0aEFuwu0QN0
	 VRmlfZT1KBPYRPLUl1i4ik3y6UPzOqYXX1J2Np8L2YyG1RKuA5Dz3hHRFvwfbYRzeb
	 eQ5mT/KLajMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79A0E92FF1
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169657662867.15948.7405808535967578501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa156eca2fc5b238de4700e5d844913af7326fd2e97f807cded35f6127177c3
Date: Fri, 06 Oct 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696576628
