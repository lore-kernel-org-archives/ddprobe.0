Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38949659
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B33C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675150385;
	bh=Ufg8iOuFmX+dpqE3xpGkNaQXSl3M+yFT3R+4hYUoYsw=;
	h=To:Subject:From:Date:From;
	b=rOBh/GOJPoDIflIVNzOOQb4KPhFysVhKiOo85Yg8iY0HdqkHM4gtJ5zlFDA/ZR2eD
	 8nybzUi+JaDXxYc/vXNi8YK4sqprdGGCI7b7mYPTQ9igbstPSDv4cVy1h9PlTYobU+
	 2CdbQYSV2o8KFs3a0siOonGoR0tBOXVXAMjBhbS/98/FIG97FBB1Ozu/IV/sGJh9Lo
	 MKR5qD6wz6xZtIGlxGb3+HpAHVPunwO/sPS/fSIxFpr3Uib2wqpRsPrrbYLmN194Tq
	 XmUiDITiNS8yq8ofUxq+yGHvb+eItQhUIvYUKysLT5FGyMixF3XGZz4UdbmXJzFEh7
	 M+MjazXVhAoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67F7C636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167515038573.24080.16432022233095111493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062979087f19d355fb848d4abe4230394827e52973e4a68dca44eed084b12806
Date: Tue, 31 Jan 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675150385
