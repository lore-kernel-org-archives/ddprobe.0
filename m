Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0096B7691E
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME7uNoIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8821CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703192896;
	bh=Z9EyFomK/pteUOQMjo/sxMxtkM1e5esFfe5tdhcs73s=;
	h=To:Subject:From:Date:From;
	b=ME7uNoIX7CMqw1q6nlcEWDX2oinfWdZw59adrxdzz9HYLgufPCacJfpEt8gFte7TW
	 t6RPdx1GKnQIcQYwWecIKhJj/8xlN9DHAICYBvuRhE9L+O8zKjTte8ZYdKn5vVGh9y
	 Gi8wiKqn/XfgqpjEMtiZ1NtLwBDiy6afBFhvTxUcZx5sXpQ6kqZsEQU+Nm6Jb5MjOv
	 XMuugA0161j0S0FGLpPQwtD6BOjNZQNvNvZk/RMwuIkOyWBR2jHLFAU0i5o+yvsKcd
	 yVDfFFP7XFI10kOpMJ9plvOwuO7OJDY1EwFM3hNZHcUEiNzUtviFDsIqZNb7hRgVhn
	 69nt9tXNxINxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FC8C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170319289641.21636.11207181727562845521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b02b66bf3914c5d9fd3cc1cec19431ca95258b07e7e94e1c2507aeec6d66df
Date: Thu, 21 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703192896
