Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C850033E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE29C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671748887;
	bh=nKJwZXpzk9KDG9liMhe83h9bsmQwU/VfhbC6Ge8TpV4=;
	h=To:Subject:From:Date:From;
	b=rMnw4A5TgwvFcmFO/WZdJ6QxRpreVwekb7c6iNRwgENvUGZa3WPqUXNuSKMPnJMtG
	 SnxIeFDXegDzbehQJq5hgxkLTbqlXIc1zdMnjlbZwN5ah0iQgMh7znbnO0MJVpPWEa
	 meFazJURNXAfrkzF2BmpZFKWaeiVd/muxyyU+KosDgMwu6C2V2qdD3JA2kjetfcZe9
	 T1yJFliX1PxzRmTi1mrWrVHxykMi9s9r/7ASUOYWxrqmqsSU7MgiYHf11JF1228aew
	 Hb25rspbNTdKC3C012LkH3fkE8PHHAyv4zfIizpd154pOEW+OcHbWvt1TJlZYzvQ5j
	 ESzuKvO/WpdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F61C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174888739.347.6469849444303200627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6033f6176491964368858ade5e3c7bc57a9f1f6df9cd08b1d7ec3bcd40fb3f
Date: Thu, 22 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671748887
