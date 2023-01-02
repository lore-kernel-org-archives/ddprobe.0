Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E452217F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C6B5C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672639887;
	bh=hfuX0Vm8wG89dXANORyAGnSQvICfRpDWtYLrNBzr7A0=;
	h=To:Subject:From:Date:From;
	b=EQHnXl2HcjrVjLpffKyQE/UjdBLdgCRRAqiF4ZOfRhVFRMXpiIdaWphQpFAgLf10t
	 VZvG9BGOqhApsylFJ6TF6XtiKKmp548mYz7xE2RPUYnwOPM9DMCBKVxpXS0ZTP6z60
	 5jMpYYtdSccfBw+Kryvrd68noqO3w4zDtzMhejbbevF+/UDqy7VGLWofQKSfToFWDG
	 jcIhQ/mv7mgc+bifXyByCvp6hxN/XitaO/5rL5linVKA2mZ1tsZAN/lEEFmR8TWByS
	 PGzP2wMoos3CZOeZc7ZTuILLwXv4h25XltS6Nn7slfRcaDS9qVldoYwwrNgBUqXpGJ
	 B6dAbLBvbJoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7335DC4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263988746.4784.1022691056356743444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7aceaa6e2828da3e5868bcbd2d26071ea7995e9befabf8dc49610a28602fa7
Date: Mon, 02 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672639887
