Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C0F3838A
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715746943; cv=none; b=qPVb/Yd3i174kXqx0jPY9Q68zM6oi3MJQmCZwSDYW0v9Dl2RikgdV8x+bmr8vUvS2u+NWkEiZVYPteW0STqoaf8584/6MSM3WBM1GxXbm+wCZMIPFxhsWS2IH0qHegUiU9+lnV9dqwAPZaXkkANwBT/kLzEQNQ8EHLOzaIEkuO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715746943; c=relaxed/simple;
	bh=YmBzG7kd3Q+rqCyUTql+DLEZlmTq7buCRgsztnTxjqs=;
	h=To:Subject:From:Message-Id:Date; b=Xb/UbZvGBLqSQ/MgC6QMHUAmceQOAqkACfNvpz0S7p/ix8DZAF1+XfufImBZAb7MSYMbZTpxDQY+a0s+HD/wzmMd2yWGQ/eVsCsSh8min0mdot3+79nUNctU2q6Z2TxvUfRZq6dhm3KHgILGIyy4J/+FMe0i2LW4Bw4kFSAoBEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJOILDKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJOILDKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA75AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715746942;
	bh=YmBzG7kd3Q+rqCyUTql+DLEZlmTq7buCRgsztnTxjqs=;
	h=To:Subject:From:Date:From;
	b=lJOILDKfmPMAHc500RLwjx1pHv6n5WDLSZCtBcvDxDIpS6g3jPhN85tFU0v3fJ80z
	 Lb+yymSspm6fYbPUebr4vZ/2MjhYKpB6SHw0P3OSs5BaKUVIn/eJh+jZzi1v0N5Z5B
	 8RPI1QbBt7a6KzfrrF4zc7rKvm2lxZo/fIvLWO85rqHJR4cTVbejy84mZIAHKBvTfX
	 ycKdpX+DB3TXK50DSUYuPvymklhagaJuMihx8jOupNvOwilk7haWHRxR4Zkd3+PmlF
	 VyClhybfBhUzVxP3SVRVlTqQ+wradiN8zAuVf32dRkrqHCkw5E7J/BDWj/FvPWxl6j
	 CW/g2V/G9XzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82D2C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574694280.20413.2928161065480997488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877967daf7df4079c6467bb5596d82a7090095f4e42d38bf8e12d99278317498
Date: Wed, 15 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715746942
