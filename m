Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5EC19BCC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9306C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692390248;
	bh=jOYIi77AbG0zCQy2bMSraKSfEUVBFhGGIE6Awed0CUs=;
	h=To:Subject:From:Date:From;
	b=GuhT5C6BTcdoft6dWuyxYEhxS9dSfOZoLLXxoI/q0WitwIPj5dQZoEOrhWeklyE2D
	 xlb/9DUzM8TfbKNL4sepCE7FMK+180iI+yN7Z0z43Xxbt55cETI3U8qC2JCrwU1Xmk
	 198dS1pycd1tikOcE1ENRnfWk13K+ZTNW5MLp3ifkKGHvHtvv+ML4XGyes6juc8B5e
	 o6lEjL5mNSqkSOzVW9darfZC00+hVlDE60VvpgKyQFCP0v7JhklAziEZcgPYBLLHvP
	 Qhu7N/pEapW4CjV1u32YIvKOh8Yj6Jxo6meSvhh7O/NyEz09iSypzQkDSNj5QeV4RB
	 nGXgbD7by21yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E82EE498F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239024872.12644.14335953813967744626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466c0a8109cce0db43fcebd9a55038d9d9d00f1ad4b40486e0896266894d2b70
Date: Fri, 18 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692390248
