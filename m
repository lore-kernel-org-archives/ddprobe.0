Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA6928EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6E0C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691332388;
	bh=ARrD6BVx55cXqLxi6uLBg+Gnh6pSWBkkd2ZUW5OUzfs=;
	h=To:Subject:From:Date:From;
	b=God1qUd8bvjEnwk6yTq+7Evf+vK/T6mEbahjrXoQwFXF2P44gJsNqYP+3+v1zV5dy
	 V5492VOshCrsfrGjx6a5VLKJ3EMJsGYSdmWrIZKinf6ihMmA7QqO+sdFWMC2bgw2WR
	 ZWAQbqVCOlbNREyuaaNHCWFzbkltGajWP//lfObtc3egmJ4eDU3Eo+WL4AfVU0euH4
	 VumeI95oY3QTwmjn1crpwolMIqZRDDlp8w3EcR5DG9ZjsoEkJzD2Nn4tWeQT1QMV5n
	 DWOemT/Ci+iWKUjRuxplADWat1fldonROtC2u9RHXoFrWNsrKSXo5tJ5ShaQEeUviN
	 z+0TBw+mxvPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1BDC001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169133238868.5478.7441615833988272923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e506555e1c2256be11870bd7fb57fa2c668492afd02de22be403e923c41f70
Date: Sun, 06 Aug 2023 14:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691332388
