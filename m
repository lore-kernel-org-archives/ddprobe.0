Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF39C15A8
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5F8C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661697052;
	bh=1ODUDpzWXKxk5JnBkHg8B/3/XNtGLd/fi9l+altUfkU=;
	h=To:Subject:From:Date:From;
	b=lyRSi1rbDn5RVySHDC43jFEwtfenbj2J4XWpmYQbaxm7U+SUfpRmbEFi/VTNvRgQr
	 MkthIddG9RSre/4UF+ApYGBBgoJwCmg8fDRMK+/8WAtwZqAckdpxVT2XV8TetKFcJC
	 llahbR8xEdb4VIp5ui6nFpGQvK43oJMBu3ty7VJFT5Fyz35/+gYQnQx/gL1pEGu/Qm
	 MM0IEr0XOEkcJdTLksKbqamaFS4iMaexCsHEOPZpG87PyjhsTUsG//sKHqH9FgeEKu
	 4nMt2uoAxAz+v9x78gRMmhd8HPgKljI1quZz0ggZSYPGRKq65LrVbz3Nl6Vh9FYnH1
	 DEocxDguzB6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54478ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169705233.13205.1202496644848418130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db219781438d575b4510b9eeb510a6b3cdc2c4e56b1790c4c47763405c54147
Date: Sun, 28 Aug 2022 14:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661697052
