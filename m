Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F212E43
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8X1qpVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BF3C433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704626296;
	bh=cfmFnCofIy5bQJJrX+Q+4vXoTZkrCWqgh11dfk23k2Q=;
	h=To:Subject:From:Date:From;
	b=i8X1qpVLuXpF7+2pXoDq70icEqywx8hUp2RiEfTv4ycr4y+S8lytDhEn7VfUz3G3B
	 cPp3377dYC08f6w3qh6+CETYYpe2MyfpMUJQH0oj76KvMQN3GcFRtJ+FI5xDHSK3Tg
	 wTzX/5854DpAFHR8dnSpD/vs0/Fp95WTAqf2KVzs+19At2Giv3gwkBsvh3Z5DjPLjl
	 3FfGNrf3RvdFHGyhqSqGoEOSPu0froSf5tzUd7BDkHOjf1DsjjRr6J/6q4DntCdwfa
	 omJKBiwhfVxRNbnoTIxw21mUIksRqJKXbggvDS/Kp0/TP1zWBcUSYPg4OfjEEnjBmY
	 2NJpGzT+6Whnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A53EC47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170462629641.14777.6208111341599694230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2ed237a8aaf900f58a4a07eac882c735f2dfa11f78f573cc00ccec39def5c9
Date: Sun, 07 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704626296
