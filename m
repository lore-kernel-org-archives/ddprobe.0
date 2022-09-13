Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C212C1FAA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B48C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663035653;
	bh=/vnBbc/joO0yDE+0VzKdIH95oIMjTOjjb49zLvd+bwc=;
	h=To:Subject:From:Date:From;
	b=qU0HN2Q5UAfsNnEvXrFmvKakSVnQfOhKexsxZwvd5V64w5bV0tBr/nLyAXJg2J+iC
	 aLZ2IJfd6WVxJopSdff8jxUFl1vlItR1hNjBacFcjMeLhYu4UDOEE1qrYZuAh/7ckA
	 0mCOGJ0AtOawD13LcrmmLie7Wsvw8EVdaSHuC3RqSZBYkg1fUkCukv0/7ReYNVsuCG
	 Bcw/XRGPo/ZcBJQAgDDfoeWvzscnUmxjndnfWUGZsH09ikfUwNm+dlSxO8ZDkzC7/S
	 Kgoe6qmuWti1+LJc1/wm/Fv4YAj77j7rlubHTHXAcvZGVGUQjFuTkXNWT4FpCNIAKp
	 XhoW75FvzPZpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55227C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303565333.16199.17050629291590613507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb18e590316ab334ac03daa8a4a9171a78e9d21818790742d109c634b9584a2
Date: Tue, 13 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663035653
