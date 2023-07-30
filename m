Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B44B1FA4
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D29C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690761128;
	bh=zvrd+Yhs5lYIx2IjPoDtYWWwbe3Lqse04kg03o9hfYg=;
	h=To:Subject:From:Date:From;
	b=TduUTAjG6TqKDj5NR+cdHuwVpRMtdr/lnwWHUN38eakU/D9Jac/4X/1KHA6lQ1kMV
	 lFC8riVHIGVMb8DGvLmJmiWgvSjYQKw7Mq+q09llNoDeM2rTyU3OP+nIZUyYKmpxVD
	 kR7vpPjJtsmy6Y/L9wtI7zYo1oSLRNl+Kr8nLO+c8fhrvmAJueqAVtHxJ+4KodoYpq
	 MG4EQL+R6X0FhGrK1eJzFo96vTnBFQZCtX0lH4W7j6+M74SOGgu/6LBT/k090cF2Cq
	 2BsZRjWt5+mWbd6Ib5/BC+0i+9UIpVJHQTPMzvTn/+2tvz+9fpVBInNW44qMSEm6cg
	 6HUP0vUvSbrDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BF8EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076112866.7479.10548796105574837485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee53d9b253368cc1c838a23992ce506f12fd4e78e3d5d4ba5a2193880b4a14d8
Date: Sun, 30 Jul 2023 23:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690761128
