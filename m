Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B75910E6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9771C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688951828;
	bh=3+5tg2i2Koj/b4QtlXy9ep38okd4HB8+vNvADIs3ZhQ=;
	h=To:Subject:From:Date:From;
	b=G67G5scC+SJCWzy0tqOWYBey0N4OeubjXBfs6UlWuf42ZCF7QQXGt1u3Bpmm7F9hI
	 qBHi5o3lW2Oj/yZx3Tm839IBfVgM1q1dTOyzKIfdA4G+Fx2Yo2kIHwbcoST13cKDf+
	 lr0Uoezfvt+bENqAlb7oQtjCKbLx1mqnhd7ynBMzuZsgVOYHbF4OL1fG+n3HTgOAus
	 fA54fYkthWTNn3Pzol45kG5uIk7iLckEip3vnnik3Q6tJzJDZtOQ8U9TtpuaEhzUg6
	 oJ4K5aa/sZmdU+wGPFHvjOki2BqIWysGlWKkbF7rfLsk4s0r56zBvNLZc1PfFxGm8q
	 3qKghoNLWdUcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64A4EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895182880.5407.10778937319451958740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45198a88d024261e1278fc7351030e1a54cf790619dbd2d500ca6cab16410178
Date: Mon, 10 Jul 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688951828
