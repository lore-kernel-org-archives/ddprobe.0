Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4132A7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA738C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682129346;
	bh=sidkPtoK8uu+C+ijpFQX9n+6Ck5sneTBrQqoBp53klI=;
	h=To:Subject:From:Date:From;
	b=Rqak7bYxz67Ob28IZ4JBZ0yHw3jbBxc+AMAHKeny3C8/vKAe7rZgRoUJurJW3sJOx
	 R0qfx3bdsgxIj/WgJ/hTgezlPjYpDTj4Zm1KmkTadyTxweUtVD68n7D6DqWeFzNjIA
	 DWmLGNYDdFEYPfuxuWJaimWDJwQZLRfXxZLJN0tv6IFDRQoO8arQB+OYn4v9yJYNdr
	 djMtbB+O5bhUGclXGHTiimVUfPnLcc7dcKeI/HBFX9L6avKs63STvzdbAul+Lx0egl
	 +sUETln4OB0UT5V6LpkNWNDsxcqCxQc3xBbcVnL5OY8HfUOxPwHff7t3hOTunvWDNN
	 opX796qpZrjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0CAC77B61
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168212934580.24373.12385548415548576356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe953e88e7dc2c9216201a0ad208f89a5e3b3ce12bd92e8e6a3ba33cd8b2b5c
Date: Sat, 22 Apr 2023 02:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682129345
