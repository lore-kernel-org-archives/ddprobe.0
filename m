Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770666FCC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 06:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F6AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 06:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687156208;
	bh=OiTtGcgKiuj1wpSPEjGwwwweSY3HyOJ+eQD2pAO2S9E=;
	h=To:Subject:From:Date:From;
	b=KudnD502T0UH5iWkpN6x+xKW4wHWbM1/mMzYZodt6qlemnuAJPU9pcRbD9KdeBNvN
	 /lQKeqYo4AvFyzNHKi80Jf8sXfcCc3JzvmQH5VL8rzEodbPLoCvUO3MmQh1Q8c9Tvj
	 Xgp5WP/Y7wq0z6P9R2mCjIcW7S7EzhDMMaQ7iceulJSyzP07czLRFipBDc4e7Rcr3D
	 HZuccHcswnahxdeccgNaFD6ncuZvuutNUqNs6vecd79JxyH7Uzp5tSZ3bSoswRbCzW
	 0gpzMkmwOg3zmOI8AaT027zpEbP7uaHvtAMbycWxE6Hv2/0ntQU/58Twcq8GlTj40n
	 H+giaB29MWgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD47EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 06:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168715620875.31417.15235322573513094557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29593fe521e9a6cb5cdf8e6238c18cde6af660af42f90727a4f46324d6bfcd0
Date: Mon, 19 Jun 2023 06:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687156208
