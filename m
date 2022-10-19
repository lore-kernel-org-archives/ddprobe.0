Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBE87E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65547C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666165253;
	bh=8z8ZILeAMeMO5t26G07qCJ4RF6hzGFi8+zDx1ydtNRE=;
	h=To:Subject:From:Date:From;
	b=hwxB+O0LBolZKwY0sVWq2G+LpFX5tXC5xZFpfMw6bbqHFYEsSG5LLfurvLs3YwYoA
	 ys0Vrc6FMFdS6jXzAD8izm+4qy+dammfmToCIbcXTA/1eN6rfHO67gYzoJwRZZiCnU
	 5qIBoqxy93LV6+HmRFxsD6efHP1J0mRFdWWno96Y93vZ5SOEu+kWUXlnGPsNo2qXxR
	 Qw8dPNriX235N0hE4ffx72T0t3pAmOzNUnUb9KxF6YI5kAYiicKQYvc8IZPbHvggQ3
	 B755+49efBMtews4MlvYBjz01YPJhNgBQ+b1fmruitPGeIKanCxjR7DF5U8R1+ckUl
	 c7MaVAec7mteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F783C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616525331.8758.8144930080759493900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870acd6357e9bc2d68eff1684b23e548a8c491fee8270ef52ef5dbc0c91c4b31
Date: Wed, 19 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666165253
