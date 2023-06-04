Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9575A23AD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0B9C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685905146;
	bh=GxaeGCYdJu55QErptLyz+CceSZT82x0Pww5z2VIHif0=;
	h=To:Subject:From:Date:From;
	b=b/m31vytTmNUVJURnfMFogJVHCZkMG0tyNZnY0OIjNh1ihaCJxoDzM5I/UJt1TGMt
	 fyFXB+dr7C/V2a6Hf0ojq3BVtl2Fl2SHm6uHjHX40kLUL73WRqSQudxAfOIzdB4K6G
	 lQnFt++DsNa1/6Mq4tjB0hzUqOCPA2wrKYoafvSd5V6LPtMyLd8Mio8mYjK5/rqNT1
	 mfuWzYATUMQ/tV5JcQYr6Xnl03I3KjuOhGo6j5K1oHzBqPI8DLruXnSRRfP/v4E7/k
	 eR33E3ZhPpBERQvgQlRa9OSd9zii6k3rB6dE/aPsZvVIVbwN+m8AmpYZ7V/WAbzR3J
	 YN1HxZ0giglkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAF7C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590514584.27225.48754276877230201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba454201467bbd99b2caca324b749c660250a5f800dbbcec84b8da6f703a971
Date: Sun, 04 Jun 2023 18:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685905145
