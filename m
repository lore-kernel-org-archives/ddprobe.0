Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD03322D4F1
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748541593; cv=none; b=FU5fu6vmQ8U9jjgMNjShmdiPfRGstwzfK3Z+FwpgTGoBkc76kUrS3dgmHQBZZLla1G58PHtEGgz84pdwWlpsUrEcfu9QMdLhWCYVOO2VeI+zski5xl+UmLBVnXNcFxTwzjJdALoo+qVhI0IIOkXYpJoVbHh7sod9bv9+G4qEZNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748541593; c=relaxed/simple;
	bh=Re12QXPzweEMsxmDG/4kw0fyJMjzNfcjPw+KsI7eC2E=;
	h=To:Subject:From:Message-Id:Date; b=jaRUy9xxWh1t/Xo/rSZ3l+mUjFo47F5kvTVSftWrxnTSVdfrxYiJyi4BZsFycuGDuXRlLienP63WhSVKIvbGni8AQrEFgCG8/g8uN/kqkcb8FtGeTjzFynD7fyiwvRJQxplpRtAdCwtij8kryJmMy2DMDLoXkRen9Ll+VEDbOG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPCfP9vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPCfP9vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748541593;
	bh=Re12QXPzweEMsxmDG/4kw0fyJMjzNfcjPw+KsI7eC2E=;
	h=To:Subject:From:Date:From;
	b=bPCfP9vS2HmFHx4HsYqEY6x3w3gmfYasNKV7Xhpak9NSwHNtGwIOp7WAOFY0uuSOH
	 7XN5hRf7QivZ6gURqrNI06VauDXsMNcY/YZKJ7O4HWmqr2zNFRW46/zKuXbd0P9zLY
	 b1JiviLeJb+PlDle3wPbjQSsB5FYkE/CltDoNY4JGiQ1EW49hRplLZ7gTnAmxeKVph
	 eA9jNC2+Tz77ZSzAgzPZMuZ8O0lNOU3tusfJaUL2u/mK2brNsyabhoyGbeYBY9R56Z
	 kZELmw4h9irhLWlrDY7B9cNcZbjbgQynwZ9qJF/8gwOEvJDfWMa4trOQXl9cTPJHf2
	 IFMuh/mq38iDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94BC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854159357.30248.8279739976509825550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d77d984c2c55d66fb8849142b2593980795224ef87da026027e9c6cf676a7a
Date: Thu, 29 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748541593
