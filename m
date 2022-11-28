Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7D1A461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83497C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669661454;
	bh=mwRfiGWQCasexHqsfeU9eTaXdRKjovDJWJfkXyvyUNc=;
	h=To:Subject:From:Date:From;
	b=hm7FbWoigJFF9Qn4yTWfYdo2sr14Th13J4U0tMmAHFV4GpTin5ochlE189wuc41GZ
	 Axy7+C7qEapBp2N9ETHEauQgZs4vAe9IsVImO68Bd0oVpFOK3lZBtRKy3SdfE8uObZ
	 3euMgpOrTKa28O2k9HZC72PiO6B4pUqwP88yg/8jeljPaBdgn/CYXaBp2RJ3COiiMy
	 KgpUQ5iFIUpWUV8NaAOg4wTtADQN/GOpUByYbxMmd1uOhlPN24XH+wEzXhwEcypwnz
	 ZesDixcmHN8gwoJnc8ed9WYYL96Rk39FXFHw0iKW7n5aLY+iiosbTwwGNf6q5JK04q
	 TjGfHqPtNstug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F54AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966145438.31537.17415466479428400818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22724320887b5a2f17fa3f9e5dedd9f74a9095e47f9d282b3caec0fda902063
Date: Mon, 28 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669661454
