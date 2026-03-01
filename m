Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C45258EE1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772336094; cv=none; b=mt6N1da7L5HziupFq63C0zZmCZyoC7TWsatu8noT22UitDFP1zYjr+kWJapVrSi8X7wXgKH3tmydSm8CE9BsioDPoQv9Fe6W71TO1uV3hBYs+cDFq8lFrRnwQOqRVrhXwCS1sx45XZxWaWLBBB1M3Li8Fn08Sk2h5OARxGWh3Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772336094; c=relaxed/simple;
	bh=yORTHJbrQ+uDn0EdHJoQ2YpAWxlNrgdh+MRd/7vY9XU=;
	h=To:Subject:From:Message-Id:Date; b=fliLmq6YpbIpMv1OaeS0k3+BBwQzm0/Q42LHweiTJGe0Z2ePC3hV8kuUPdRKGYLv7OfHkAsOc/mWPn5zV3Sw/m2y7Gz6wPpz7gaZYgp1bMPvXNHhJPITMNd0H/E+id/aBM5M52SmZczknZA2s56KVQBleeMYYg0llTLF1ba2hSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcTIu9fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcTIu9fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD0C19423
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772336093;
	bh=yORTHJbrQ+uDn0EdHJoQ2YpAWxlNrgdh+MRd/7vY9XU=;
	h=To:Subject:From:Date:From;
	b=OcTIu9fHXH9xwIxwUUY4lgTiI7SnY13T5uQobcDn0tdTXJznYE+66XtCJC/LpR6a6
	 LN4t1e/YflGxsfdWmbOEzQEK5C0Ox/L17fN1mbRam0cd4jXgMeTFv07Mc6YOfuEPWQ
	 vHGKvYd7n7UbHH2g4mYnQ2olB4e5JOJ6mSqeBKhbaO2YkKeraIXamYakkfRcgGNmRQ
	 zgIV21zqaV1saPy2c30NVDX5k/Acu7iFxlVUerDAReVQi/h/ibCW6Klup6RRdda1mm
	 hdZfOVeRuMOjn8EuBTgEiQVSNq6TrWa3snMMWV+t2CXSNk3FG1pdQjXdDrCNGhUIhK
	 JKblh8zwdFm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B45FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233609359.24448.5048506879034215947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1750eb4ef3778e41f85d37b869139f230e8faede44a2f94cee64ba75d25a13
Date: Sun, 01 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772336093
