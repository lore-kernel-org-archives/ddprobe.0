Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8AB6FB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF38AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674678185;
	bh=vSi0xrgRgvkJarltoKJqP9Z854LV1MeLSmi0BtfwNec=;
	h=To:Subject:From:Date:From;
	b=Y5iFoQnQI7tNnJ6qcUQOjv0gfJ3HIX1r6pM3B1NU4qCeHwug5V3j+OjJaxAWYgnhK
	 ud/GBPqQcMJGiJ0X9ec/D1NA6bqyo6vBLQF/V6U1cq1Zcs2aQgismfazch4NoPJ8j6
	 f/6hq47yskFev85X3eW+nZ1QQB9Ob2a4SlYVhNctfSpL8kii2TlXCkgFIBAaRa3Q+K
	 CEONVYZQqgdpiLUUjR98gCSDPh60D5l6tT99CH2Iphyn4UOSM6XAeZGNBsVkXP4WRv
	 eMtAahT6C1PNxuBLvTU1ujbEvWpNveTlWd9NM2QwCJ0bxOtEU0JMHGDQUykBCALCh5
	 ItB8w/EAEHJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3670C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467818572.511.5586951293713363915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3f727f3f68542467d46065155a3b90e23253e1a01c8692368a146e5b41e007
Date: Wed, 25 Jan 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674678185
