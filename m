Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6693B813
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C526C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681591446;
	bh=Ksq9X2nLWTGn0w5Ecu+jKs/8Vq/+5WqjcPz1Espx22w=;
	h=To:Subject:From:Date:From;
	b=oxVkaNco8lGvuE5d6mi9s5JpTGwLHo8EZRoevVVjAoQc7aTlNKsnOzScGHPrSyDtm
	 KiAz5OoGhBXYp4l9ttM/pXKboa5MwcP5CpfZRqTQ3+7kDY4KAxJ1QxbYhX/fpQ7wdF
	 MXB1OgkCZVBQHCYBmB4w0dihDTL44Ut2a9Bks5mElsGkaFQXcvSgK8VcRfkIY8VBG4
	 Kj3SoE45d+jw+Vd0a8mhL6DW3OFnEq4+IN13BmLnr7Jbm8/yt9H0nhhAYpu2TVKFa9
	 1ij5Eez2Pf/kbGO72jhJmdKQR6+w/BTETdGOMUhe3kt89+qMtOpIE92oqr+/N7P8Wt
	 IsI3hGbhptnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4055C77B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159144583.910.4316711356996447066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27fbfac8423ce3849edf3828a1ac11f110bb8321e6bc3cce5cfe194d1d25952
Date: Sat, 15 Apr 2023 20:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681591445
