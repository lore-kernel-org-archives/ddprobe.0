Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965C67C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8E8C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686105725;
	bh=93cCKdfKJZIJJ6yqRhxOjRKfhwfqgsu3rmy6eCGws6I=;
	h=To:Subject:From:Date:From;
	b=Kmp0dHDLMDGri7+IkQFr0ufU7Ic7o2qtf0vEX6dH1fxclnLztXX2AT91o1kvG/RLh
	 +IUnSN8TJ4AvmbvVs1V5XCC04IwrGHBU5srfEfqTaplts2igZDJaIrDkwM8OPLV46t
	 ryQIWqQZeUXdMmUFKkm2tmklJ97/GoQ2dVTLXy1sfyp5g/BqmrNMQrLm/d8P+OD1Ba
	 J0BVMzR156/JlJgci6c1RKasviR92BOM9B7Y+g242OmwokRqv50yDRmjIsS3Xbo54V
	 kr3STgrwJt+hfcCKMBMbkqeJ1ixiGut0oNYk8yOGUXajhzT4lczd+dDyEmxTksrcod
	 yxDS2uzkC9bLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04CCC7EE2F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168610572576.7181.5796713183599692510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c447649af4cd873cfc494b46eaf1a67d62e85d0788f29acfbfe20673c0f6038b
Date: Wed, 07 Jun 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686105725
