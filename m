Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6C17D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5292C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688888828;
	bh=9Ze08ny57OzJnjFs9Jzz3UITpXV9vchHM7Q6cuWmSsQ=;
	h=To:Subject:From:Date:From;
	b=nUsGY2pvwgogWiV3VJS7nZO3iszysgvq/9qhl0TRzLAX1JfKEos6Fh8g8D0iKFTPh
	 PO5tLWzl241GaU/zq5sZQomXDPvOAfEvchvl6n+6YXJlF9ENpb7Ftz9OxM86xjYIEo
	 JopkDsprTHzDbqv3WgFWgRQ3CKc9zq8LScDbplKKJnZmH45hnXyoQw6a9YPTAgWjpI
	 A8ntRff1IoFtahU2jkuC0oIehafI82plwTQJIPvZKoC3A5ZFGq+XKhCJkI8VU9LK/S
	 fWecazcOHMd8ZUHTH+TA2QLKhV18lOnoh+ddjO2seS2WQYHg40ZwklsDZBfvw9J+TN
	 QkeMiQQ4HbbVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A715AEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888882866.7279.2226264287334437426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dd50554b08b8aaaec17795b6131d4d9efe2caa52855fdbd9c01b01bcaa6b6f
Date: Sun, 09 Jul 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688888828
