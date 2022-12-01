Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE114D53C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C70BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669934454;
	bh=NtwkoD+KCJb3ysdpDzZKkFdwnUxhgbL2K4Ub1ZkM7c0=;
	h=To:Subject:From:Date:From;
	b=us98PVyMpgqd+HSSh3OBDCoKAnXJIabVAJ/gBZYeWBM8ffk28AbDmUu2Ri62sF5u2
	 l7NnWzfUAgdykZV+99Iq6IcS08Gi0oCLvqQRsUQYjZFSPt5tvBzzK3BsFhkdWYL79Z
	 lPXGqbtf959zgWw4gnuIBvX/b++DNsHt2qYRq8Z5EOecFC9lce2B6OuWdEaQ13rOLG
	 8Fr716pjwcdDMHL7xqtxazZPdmai4N+hsA4spkLtvuuhGCb+d56uVjeSwQ34o0qSjN
	 mpRX+zU4sAJC8vX3E+zARwgdPatD/syk8u/b4W9PTh9F7EL+ZT2XZtAsj+HUlfE0XK
	 4T6ZJ9vx0JE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EFFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993445433.17492.15161839333867504504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c517037059f4c0eb3c9da6d4dc5367c3c0b822d64aa1d08b655d05c0782e02a1
Date: Thu, 01 Dec 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669934454
