Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA9D379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24BCC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686791828;
	bh=ZuMwYH/Tc31A7yP/aHZIAxf6WSqLUlPQhk9/VNrFpdo=;
	h=To:Subject:From:Date:From;
	b=EJwOs07FKJjPk81hUQk+MCDlIc/uywp2EvUh4l14q6Z6Jk4YaUO6nXAYi79XQSgct
	 eOb8Io5fPleHT5OQ42Ct7oXq0JTdU4AtPtazS+wVV/9KUA/DZNe1nU8Sb9mTJpvHWr
	 5sQxetqKqs3tFOQ79076/r2C9WLMXUFimI3cT2aKlRM6NQI4C1iq/DY5P/rF29dilE
	 kXZ8xaxco2fybt/Rr2vlzNk7d44s5FxrduEFV5AkGSp70EdZLkiZe6F7SjdfTe/82K
	 qmVswKqPk2s3asaQ5/a5WLKZvnCd73rxAofA2x5BwjMOJHd1fY8l8w/fagpy6gBtry
	 /kDr2sGdZY4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA1AEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679182874.7627.17056996075434215644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a357b8223a457282d503571034d006711f261c9d7d39a9df8533c3101d9d563
Date: Thu, 15 Jun 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686791828
