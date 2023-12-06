Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0F86A004
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYq2/2or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE1C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701884896;
	bh=hGEg5ZyJlfUCaIBoD6npI0z4F+FC4stlKFTqCOd7ZVA=;
	h=To:Subject:From:Date:From;
	b=RYq2/2orjWTxQlfVfidoyMjhU9grIlbkV6jz+kmRpxeS43uLRWA/Pp7RkmGuJf7XB
	 3T8nSGtQnXAKmMOJljaPjdON7CPIlCMGyibav61S6Eli/A0TnlPWBz2+qaLW/GUU3S
	 bW/8d4TsGIsRKph8PC56POqzCGA54ZXbgjFze6bembX8FKGX/hyH/h+KGvPFQ9kQ+p
	 hx4Yjhv9q2tEppUzvzS4ECXagsXZmcC2hlHzExTeFa+u0V6D04XzwRbAHeGxSUkC84
	 Sbd49WNHpBxq145OSfoiyH+dJ+FSeRjmwg0sabeyW/Vm64SVoD4VMLjx3C6WqHuBbb
	 cvE0K7Ws0s+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 832B1C10F04
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170188489652.11242.13680178530380804659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3eb1aa9699831db476ccd04ee9766472077c1fe70e7e2683f7fbf8a93b7e3a3
Date: Wed, 06 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701884896
