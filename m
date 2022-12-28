Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF10FA47
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D376C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672200687;
	bh=V0l9mol6kf5b1pi1ak5eKCHSeU3AEvvjm5Yloq8gXYs=;
	h=To:Subject:From:Date:From;
	b=K8pxQZJnZ0lpsJYmd27tcWEZVleXdyRNTSPpEc/UFzdNk9nfoHLq5uTjemKZYOnUq
	 ZRaDoUulpQF+PwUpTt5Gn8OyGsrwIvKxQ2ZfJivx/gmAZqZjww7pQkFV6iR7mBuyTV
	 E/PJqo8CmCVFrGpddKBtYGVc+50jVa9ytRJl4Px6PXUIJV3AoSE1x8X7jDRz0d9Pk9
	 Zj0MCdBL0b0wV0JPgLyu9+IQtB4gXW7y7H1RdlXqLs3uO3iyKDP1ak7Lh2JVnpFd4S
	 BOBNw5KCHiO4Iox9YU832eqCSnhf09XYPZCw/XVbC2LPPp+eAuBVPr7mEGuCKffb0D
	 ddyP77sLLrygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65322C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220068739.27020.2347064626865316103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d972b3bbba521db1dcd025961b7ea1d1b0df83afd70432551110e89ccc621516
Date: Wed, 28 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672200687
