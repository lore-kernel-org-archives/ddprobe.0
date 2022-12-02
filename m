Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F197C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7726EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669948254;
	bh=/6DQ7X/TlCDFHuJaAqi0/5FhtQ87NHQLVHqU2102/QI=;
	h=To:Subject:From:Date:From;
	b=aAoErBDIWO8t+2dsR/QoFEuHlSsm1nSpSIJ3JrA1uKv/tBaTDTAXOzDD5UwhuUOBH
	 2HUrF38LAdLcwMFbkYJzkHbWA0tqao2yUpVSnngmdPuGPNnTiPnDrBshicGEbnTgcQ
	 xOI4QgDN0FJb6gxV+gFF+exVLHCju2qDVJmk3XYtgR0XZ6PkeJQmTkfNxKJEu0fWBh
	 BzT/EcTMOQwtFg2rZMLWZsr6IJwbkEl753Vw2L/t+J0xD+EEbCfXZ0LBlw+kd4A3CE
	 HhtRGw2QPt06NbN9pj9AeBHu174YjZpwyvuG2u3K3iWKmflxuOBBGiTdWOZMQHKdro
	 QNGVZblh1i0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A67BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994825435.27835.17134393518364745704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea189220dd1ef3aa95b90537293e2cde2d8cc64d0bb3329dab8ed8002c6c49f
Date: Fri, 02 Dec 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669948254
