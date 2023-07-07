Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890B01774B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAD4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688771228;
	bh=+dFg8mBkcwrQhbOVOzTl6667vGTqsukQiyZfOPbemb8=;
	h=To:Subject:From:Date:From;
	b=DKFLdhPC8arMqbTJM4bjWglmKRbkmT/G9JrgPDWg1nTTPhYAzqzQsaXITc7dx26jI
	 8ueZCAXYTyqM3vY63WOn9pvoie79Y+VtquX+iVdMLybLZYt06NS2cBT4AudhxS0+aY
	 Fkw6GJ4p6AyIXhdMSu3CsLByZWCrQ7OOfqB6ZzG3+HwSI1omkSjCywod4VLCVPw8lF
	 3+NjaoGhZPSZpPXNMEZX2Rd379izdYdusxOnxYRpXTgDUTw+2MDy32kbKcR6ZdaU5i
	 8qmjokLKiPAJ7Jhcqx4ILxL16Lz1t0YinPe9VAqry4ahiDQ1XOop2B/rElXsBErazQ
	 Kp0f+zlVBokNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5C7EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877122869.25560.15971518220824883648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5aac351e701d615e235c02f9b1721ed43c5c0b5ea2e934179435d69d0915027
Date: Fri, 07 Jul 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688771228
