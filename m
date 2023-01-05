Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E012F80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8E7C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672902087;
	bh=4aqN6eqF4/81Xn2zxYD84oAVrzqHSamn31nebYsUOJc=;
	h=To:Subject:From:Date:From;
	b=eyQ2md3rGSk1b8EMrlDlOWLtkhofKI9TgcrKn12vEfWw8ObygcmVVvDbv/tvXPLNJ
	 f8qJbOHKoOC85Sv5dFdjQTS2BJHKEQuJp7jWkaEqNlDq/isChd+LtsJBH4lZIvjPd3
	 YiWng8EVJr9NEJxLkIDDbScEmrp6x68zPC1+QofZdW0a917UFCMf4zFwgahvK/R9jZ
	 1Z1L3NcnW645+8sbAdQU4Boa1Qf6YuoW8DtX7RXY3gSLxV5aQLC0VI67jXbCxtfZOG
	 dAfqhWDFy9Aht4wKMMaECuXTOkpe0mkkN+kjHZJaEA7G7VZGvFwhWFXDx4efS8LXyX
	 ukms3Hl4yJLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7085DC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290208744.22237.16410499379811917916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764cb7d007d6208b3d408c8d87ba7cdf67119f9f0cc2a59e5e232a9b15d588ee
Date: Thu, 05 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672902087
