Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D4A1101
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1AAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685581445;
	bh=pWu3QiKx7ibCz/zLzWyE6BCpbhumGUg8IHVnIlsI8yc=;
	h=To:Subject:From:Date:From;
	b=WSCBdYBf86ryEOHKO5bsizqyQEJ9YLpUOqd8gsCaZtEdoTXZDt0Gl3jB33ypYjGXZ
	 fG1B4WlBS9J7AMx4om1D8huZSj5lY+BZWLta8hP1SaM2HKaRwqYmp9CQYzk9ufsV1I
	 NlYlM0SJqAEacF1LvfPlf6cXR7gMxUxwN4PaHAN8+azuDpegaaar6LfQBZav/egLni
	 45MPvhFEXmT+k3BA0lFW41nRWiSaI1jo1pi+UXQqzDDn0YDPqMfhJGk0pT6TtA8S7j
	 adqzNaupjy+zmdHEreWOFxpXu/1BQ6LlcAA5c62qN+EkyHQ1NfRRxKfa/AuYo5lIOw
	 0Tc2VkpYwxFcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE17FC77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168558144576.9462.17989515413555265275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238afb3f8b2a89b1078d5213b6d6cb5229d0e09a0dad89dd850b3ebb47c80ed9
Date: Thu, 01 Jun 2023 01:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685581445
