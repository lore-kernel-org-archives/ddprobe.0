Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535DF33D0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5F7C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687941788;
	bh=Jj2TvUpeZYMJJLhXzkeqWSP0Ikg6Qs+wKZqN/ptHfS8=;
	h=To:Subject:From:Date:From;
	b=rNi9euww1vtM+q3V8/zh9BO5vcz+XlXqxGFjW6psQNjN1NIQkRfIApEJzCNbSHbBw
	 AYbW7mo5aSzcEB8/AMcpTHF/VoUsns3k7CsPG26xPZOizZM9DRkI2gGUuFLmjXscUu
	 XpjfXwlkKSyGtCiEfJeD9IAmafH44zDCcq3SuO9Oz98uWKNyfxUa2RzMjkNIgBCWZQ
	 XyXB9l0aBgWgmEO/Lo580aoa+K3qV3TlrFZkUgaHg/0Ma28AD2xCK6DLDTlEYQyC3s
	 QENVYM5FKWKX5s6BgXKSmFDh/ZpTjWsj1UdcXHiW63j90tc3b5bcdnQORVP3jbz0BG
	 WS+plr0D6JoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C8FEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794178872.22124.4205554371353014616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71dc1b21ef1517f2cdb778ba9ae543a2f6b4d94a1627fc507f3868eb1fa835e
Date: Wed, 28 Jun 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687941788
