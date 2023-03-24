Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4036D210B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C76C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679638805;
	bh=zT+RLMwTS3d2yQ8V5fj+7h5Cv3fxrCCu2KHq8FzWUt8=;
	h=To:Subject:From:Date:From;
	b=L7WXq1LVnWCv41vGSiXDM54r48e1MWjz3ljKEI/3GGcedxzP+RnHz5o3XzdLgWJFj
	 UdiLvSq9KTzIEBpDICy6MP3WUYOvcLR5/nDtgaABjw/Dx6l7rLLEOIZCOUjFbO11Gt
	 u2qucUPaXeitRmgNrqmQ5jMS3BqkK0rjc53GZa/ydWw9TbtENmg3z3g9lUhPb5lsso
	 RmfdzaGnjz/qU1mEAyodsu4/z1ewhsKQzQo5AovAmyWgyUFEQxVJGwUqpvSKksWXTV
	 Qb+sjdTZbm5yPBillJdS6yCXfLB0AA7NteoV+IGmbw7ggEO3dAXV2hPX6nuH/fKvGz
	 8G/jCxoTnCzXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6F3C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963880574.13376.8145855470598509595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3634f0c79f0db936f57b9e44ba4ef8c35c4f43eb607ac0d6636163c1c47848bb
Date: Fri, 24 Mar 2023 06:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679638805
