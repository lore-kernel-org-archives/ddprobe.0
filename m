Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD70433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE04C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669236054;
	bh=QNEprRA/K29/klCQRMaXROs17/ZZXgBRtAI/tUkLkIE=;
	h=To:Subject:From:Date:From;
	b=SNNJRLaobveNuu2GWfxo3kQdbG50OgETKsZAScdmGaTmQ+MkvC49dvhMc2A3PyfNa
	 f3qivVbHjV5+flg4SchcUG85XL1B84v7XqQWxXto6epm95g2gEXdIww3qdRdbVH4xS
	 PgD1RDETNPRmJiE3ItZZeMiXisYAIh7djkHyS3XdLqV/i0SU27oOFtq41tkJIkyDDZ
	 Xerdeu0dgdKen+nm0tM+eW0YA7F+UiiSZOLR/rOEDRF7SiQZ8Imnva9XsLEcDN35Ev
	 A/mP1VZWveYSLRb3vX4FoW7fxQ4ik6G+sv53qFaSGTtOe9TsE0OZL3paxA3V6UoXHw
	 aIPMu9rnzbVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565EBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923605434.29512.15163417849513642796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8bebed3b4509dea0398e4912e777e737c04624222a4dcc015c4b42a568f0ad
Date: Wed, 23 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669236054
