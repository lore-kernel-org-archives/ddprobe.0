Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B954162C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A48C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663504853;
	bh=f+3QJbw9SBy2QsNIw5KZW25W9/iU8J7RPPK1BcC+8eA=;
	h=To:Subject:From:Date:From;
	b=DLEKWLU/EuQtKiOKxKQHv9zRitGcfF1ojDthNWPUx+Fo7+9KtdQZPpMrkJS7ynZsG
	 LuCktE/emgZwmG2Cc7f+62hx1wdsUBWjzIJZDrPkJM+xn5lmAM+8x29PZFwIl9sB+c
	 cQSoTVMC0BTjekwVm3fRIqMgyknXBPrZwoJTnmSLCTRasfDvPDjoPBZqiQEVhwq7H8
	 LiR0fdtJucMovBIsgRpozT3koZsKR/GMXUcqa5l7A1kXvpaOH86dh8GTEgKx6qmqKm
	 CkzDuOSzjJIYsJupoOdN7sdfMJhgBQyJKFM28jyOTePH5ZvBXRsHKkHD6p+eB0SXOa
	 5dAM3XSIXNBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C9EC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350485332.2525.6349005201393276389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d2dfa114c382b5111acdd9bafb7f48f1c1887cb06c9181325c058265c130f5
Date: Sun, 18 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663504853
