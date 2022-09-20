Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7E77C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739A7C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663635053;
	bh=WQHJxJ/U2zIGigUEFhXoV4WRnHU6Pnw/e0BYhs0grYU=;
	h=To:Subject:From:Date:From;
	b=I/3BEhkkXZJmMPGpu+UWR+4sdXfDFmuaBOt5Wy1UsHwwpZ/mMFYh9WgMXap846PNF
	 mq5ag1oDaBi1weuvjX/WcyQOuFQgqbLTrtLSTca8SXMmTnXTQ92RCYV233VlI/PVvU
	 2Gyb7HGLbdQy6Daxfl85bAV1BhDFk8oX7buMkuHNQnc+xZ2LFyuTng3E+96t9oTxMZ
	 OsfZxr6PRlDZYQBP+ZaGV8SUjwPpq26d81vbKKy/GytCKwsO7rmbziJTUpenqJziQO
	 CXc0PVkfemyqkP9wXYYW13DRmtrS5L8Y78yznJmN8W0Ba4+FXskQCmhU0OIVORlPk2
	 IhXAfN2CKRcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52728C6FA8B
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363505332.4774.6505924694912568861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d18c208a1a933801ca4ef486c9d986ee8941f7f65b7ebd1699c8c0b27985a0
Date: Tue, 20 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663635053
