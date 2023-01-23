Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7B1A21
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD4EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674459125;
	bh=BUXdMGBcIM4+Mo/O9iKgD+QbkqZYuU2sekjyYr1nrl8=;
	h=To:Subject:From:Date:From;
	b=W39KS4plF+LkcAIN2wuxn2Y7MODkPyfm0bJJp4Rz+PIh+ABC/BPh6cCFJK6JuZups
	 0ATM77cEAH2r6cfOf6Da4rA5ronpsqOKHtUppczZfoSm9mIidsYtHe3zUXtRLm39cB
	 t9ql2drX5vHMJ4NEPmeDepUv5G3FTuo3MMehiPL+1d5GYazo/v67bJuYpp26tFbHel
	 hJCwEBGORIhF0qxVZ0cf9XWYjVBcwRJ+ovfHJfPtF2pzYEQ20L582/ltuCMe3x8s7v
	 QdgQDo8/tMHCupBGQPBtJmy7Sh1EyP0SQ5JzTeB8SLwG6raMPS5HuIvR1QQuhaFved
	 9LQrxjZjvaHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7F5C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167445912576.4143.84100801034367984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4ef6120b635461306b50093a697a73882be41847eb2099f4d38d7a199d9a34
Date: Mon, 23 Jan 2023 07:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674459125
