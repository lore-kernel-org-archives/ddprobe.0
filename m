Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370F210F3
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW7FIRno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83204C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697913496;
	bh=xf0hG4BTOEi3gMJBtCm9Jm/q3zQeuYviDAhY1+eYJeY=;
	h=To:Subject:From:Date:From;
	b=LW7FIRnoOOWi+37cXrsjXTXfom9j/FVUzcR8BtALfLW54lVcvn74i9c4KWYc62MOU
	 3gPVY/jT8MUKWhAog0/rzH16IrM3AY8IKEC7RosbRUv1/S5KJwgrebTNwmI9fSTbKR
	 xpHAPfsq7vGaVWGQUD9h2HrJ1tUXGS3zg68GuUxVxeZDy32/N5zyzz7xm8eHpTl6zR
	 pN/Tl/sSh9+8+Ya/rxh8nXopiRVjg4GQam1aZYRTycmL/qJxuhwYsGrO5wa94y+RF6
	 oom1xp8e5W/ausgPytKLqYaWXotTLplM6/WdQrBz1rEauzWWkRj6sXbh2DrFpZqVdL
	 Ep4+rdW28uG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644BDC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169791349638.19970.17318187583557342868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2f3de6eec59d2580593fe8593985cbd9d18e7d1a3cfddab5b86b094bebaf3e
Date: Sat, 21 Oct 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697913496
