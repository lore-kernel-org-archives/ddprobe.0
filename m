Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19A42568
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70648C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663531853;
	bh=nYBOuWcgB91P/Mxt13kxhkmMIDPbpduDqV9JwcwxYUw=;
	h=To:Subject:From:Date:From;
	b=b+0aFLIqaOEWpSNg1dt7asmMmNnWNlFjs75SbHBAShADqAd+Fw+ILQFYW/sN2RqhA
	 vekDqCCaqq20lepMDtAx4vvcIMiXYYKx+32s9Z+gYtAwlgQ+ZQmnZs9rvus6yHEOMW
	 2ntOzBhr9pcQShNxUoel8kHDgejspKqolYcbisBAUyjXNI/3lBwPwNtFHz13tededC
	 cKSbX+vgZSjlc8uv68hpQHmzQkGcWTNyvd0o7A6448B/Wp7OJRlrzlQiNKfcGLf5Gq
	 6352pzDXsu0hD630jiqi+7ZoxbR7t+tII5s5T67UvysQ+knj/WRSAJdWpt9aj84nO5
	 LdUK333pzT/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561DCECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353185331.26053.12946337475221137257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a47102a2f1e3d94b3ba04ca4083c5107aee5706665ccfde3ad630a69748a465
Date: Sun, 18 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663531853
