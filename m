Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0168D22308
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgbKXl0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8AFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699547296;
	bh=Z+1HwzYSp/ZYYzDu/Q09VtgPDb09iWpwhd2fJEKAVbQ=;
	h=To:Subject:From:Date:From;
	b=kgbKXl0pzxhXU+Q1pYTC6ynXVk2VGucAZcLJCkA597SQB17SxEjEPKQ7g5q7sEw9R
	 IKzvlAKMc4ZIc5h7PXvNurHT3DHH/HB6SHh/lCwGgoZQR+7zFsS7G630yD6MKQ/Cwt
	 JKdCCZOdx+dzAvWWIHrtSn0R7LrYKCUTP+04FI5bz768w3AYjT+LgDayV1RNcYh8Md
	 Haa0/kYa5lMgLW3k+mp5qPuySgLg2/8WlVWZ1+hftu0w6VH4shUlE6z76XaTqpkqzL
	 UYdkqmghOdDOJGapnBcsF9haK9mW5GcI4+GeQJub+dRkXNVyA8jfZImRSvB5Q3Bp8E
	 u7xjLYkxPJJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664BAC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169954729640.23929.9699986929141649220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2574aec8dd61788a3715106405b2b4617536e01bc05980fa8848cd3188c6b9
Date: Thu, 09 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699547296
