Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608E1468F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D1DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686050525;
	bh=EBXhH1deUjgkS4SU3QV+DGPqYtw7F5ArNIdJj+NlaWs=;
	h=To:Subject:From:Date:From;
	b=eJNyzQQwOecc8gtjaeQrMc1Qmu2LZe0NCmeHK1trk0Sa1l+9wuTEMl0TloyAxWKQp
	 tcT7nAjRKADQfa7C9NMwfDO87XnQ5ue/VAtcH/l4/Cq7IdW8n9ifHV68F1XUeR7azC
	 opriNXvHX4pbYgaFY51W7SPxubZI2XOsQvEN4cnqBXcGoUF/4GvCt9HQNqhR2d1sXf
	 Dw2iLl7RqDYVGZvTzEZ8rKQX4ZZ2aXHLzYbR3Z000nV8dAjwwBFU///zLIvNksDVml
	 p1NONuv5Dn9qDvk1zuuaC/GJ0008ZlSwGZ1Hj1sk5MXvPMhuSNVZ5IP8zxtmvg6Qr0
	 AJjQRwn+WELsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98A7C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605052580.28630.3837009383305637368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8fb62024cf5e9fdc91dd106fd97c52caa4c87f4bfe2cf34d02bb0b61d00b49
Date: Tue, 06 Jun 2023 11:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686050525
