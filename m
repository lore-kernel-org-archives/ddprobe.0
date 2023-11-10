Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A34E3D966
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei1897dY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D5DBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658896;
	bh=ws1WDdZUOTxskikGO8PZtp1BP4np4zfKYiv388kYSvs=;
	h=To:Subject:From:Date:From;
	b=Ei1897dYZzfF8jKL6pa6NnLRm5gB8kmZ4gzCwxoHUAhZY7UyuNu3GYFQIu8Juxd1I
	 RKlWimWfNREwaRTv1z6JYB/DxZ0FV+FqhTZiUTuzeKUIh4pi1XnBUdBjhJHnNoe1hv
	 4/Pt/v+/AzFUma5W6WO0/FC5bqHQfay7W5x/+mzAhSpwNqUMRE1w6CiI6UzBlfVHuN
	 ghwrE4ir+Am3MchQUtKUTVICQ8SHtBa2R3CA4+O/WGyWya3gkpriP+l+5edPfQpp/V
	 aF+2YwgWUlwAEshLmN0+Te8/cCYsTJ9app+KdfgfgWWA5WVfTt5gnRvF8zEeO85/+m
	 xQt5OCGeEcJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A2CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965889646.6858.12588150796524290118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56ed47bfcab5ef4eb9bf6a05febee137312b347d6a077473ab63c80154f9ff0
Date: Fri, 10 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699658896
