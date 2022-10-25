Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98A97B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70145C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666710053;
	bh=bI+DxXAxw6DUonlFujA5EuGmqC+3zx6fAoUNOI1xrpo=;
	h=To:Subject:From:Date:From;
	b=F8Y7Z6cKxH0IUGg/dsHH8dPXq378xW1NhZx70D5pD9ERrmIn514CK2dUEKIqO0utS
	 70VhujSrDPR0STuex7ZsiqCEpUDWr5Gi+m60ruXfwT7dNmHuEZq227rR11z1DYzY2o
	 1IxxATOp507dgkKqCUEy9pGIev6gEZ6G715Cn1ALCWXHlLdFqHNnOgXd5N8p7P56tE
	 pnibMUFc7TNVy0iYal2RTP6M0MbTZbM4Mpu0ahR2VXSN/92IS67MTcq+uUOfCEDvVb
	 n22BTmAfXekPDv4fNPx0x0JsXmxwPrTEZo2OzoGiHTwIxMJGborI4VfYrqb/2VeMFt
	 gIWWKx67tGdJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53852C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671005333.7954.17840597777285097523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90ca93972630602efb97a55c7cae42bb3679809f1dfa6631a11b2ed5bf5dd22
Date: Tue, 25 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666710053
