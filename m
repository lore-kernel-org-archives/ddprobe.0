Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82F22F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73440C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665949853;
	bh=1SJ6VNVqoHFdadHFW9Ye43e591aXyRdlrqgeHq6ZK8I=;
	h=To:Subject:From:Date:From;
	b=OgaW3XLWt27S0h2lFRGXzknXGE+74I7T3HpR8u8Wlc6oqMOHVW3+p+uViEjJ00v0W
	 UalflsKnSwZCe6Gy2a0mnglxy3sE+ySS2SmbAk0LA7jGAL8cD6C0fG7m1BgVpqp0Jx
	 JeL30twqZLuaTTEqthUNqXwShwFkeAtGweObfvvlK0oPkiI4mt3x7V6PPGTsd7uot3
	 LJ2ZCRQQpfmnPTpHALeBSokB/bN+v0vQ4cukltXqXI79IPe4HX4G+V4d+lX5Gz1lU3
	 ZqZa87nUhBu8JjdXwb7Pp7hPQf1bLV8U7ZBcic36qxgN3j4IPEoL8kIx1vooJPtuAX
	 ksfD9096dsMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A091C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594985333.3832.2442258288370501511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284b913fbee2e151a59c51213fece3a890123147414a1c8b02a1616f74dbfdcb
Date: Sun, 16 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665949853
