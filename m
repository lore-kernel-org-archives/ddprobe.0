Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C2A2F2B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 11:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE135C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676891285;
	bh=vcRV+le1np8NTYSiBKccMPtNK4h25tBntSADO7n3S9w=;
	h=To:Subject:From:Date:From;
	b=LNWVffgswPVLQZtpI0rbd2DsPKXmxIu0+xvFI/Y1ZzZtnjrj5vZ7K5hRrTfulKVIY
	 2DpYLOzzpfBGcLEvw1mVhQMFPGT9uGBnhdMXkYARmyy+nHf1fCF51P983gmU08Kpm1
	 bFW3acxylG7P46EgzPcn/kdR7R0B1Olf2rCHb815r/Lb+BohCqjSbwaTvMCqDjn1Cq
	 0tz0Q3OqY++wVvukyhGArNW54OJzV+LlE3cNIjgo2kp99A12iml27AnINcVvPYzGiK
	 z9U5cyEFAgQDtMdjQCyZBNYW9d1LYos7glKvgCZCeNBGZ8HmXfQh0h4FqaC89sOiBO
	 H4JNycgXzjc7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF030C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 11:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167689128577.2728.3851066656589680550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf2f3acfa15a166339ccf7dd4dc8e19c54a3a331f6426e2cd99485e9a51cdca
Date: Mon, 20 Feb 2023 11:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676891285
