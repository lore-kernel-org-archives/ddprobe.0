Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDBEA34
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVa7LC0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AB4C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701599896;
	bh=4FYSHRJug6x0XSmQDGTQ9rULHdkqGCz4+f7OtwEMs6w=;
	h=To:Subject:From:Date:From;
	b=oVa7LC0ez+KUHwSaERo8RJwsRb3PJXmnc6KbJEr+1ev9UbgDIj2TOalfb2K/wc4EY
	 ykJJb2Q/73ay+6B7iFZeooMKHlltWbi8gtr3SKi2NVKhfFLNcqTukHlVV+ejGPcSwV
	 sy8Flh4zlJ5WGi8c/v7bW7JwjiKiYbyAiYhej956N3+QMewDvgzW9hLyoqht0tmfk2
	 55s/GKBAaDjuhjw/C1IctIfMyEgxEnegNzU64q3yAd6XGh2/AsI6rd9EKaNtDis/7E
	 CPojgy1T+pHjrN649seTHhbzM5KWnw9l+3LDQSDYdlhKg5mbTlZn98IME1P9OeMKFC
	 rvuRqfWRPx/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D560C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170159989637.5377.18350680316911088442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fa91e6cca5d671be4ea23904a8634fece210593f26b1b6660397a295a82fcf
Date: Sun, 03 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701599896
