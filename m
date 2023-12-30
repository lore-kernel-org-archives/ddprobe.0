Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375F0C2D0
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxs6/uBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEADC433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703971696;
	bh=A+dYg1/HKLXAoyOlofn/QFOrTbBZfaGrQ1w7/RFZE6s=;
	h=To:Subject:From:Date:From;
	b=jxs6/uBwDFn8LFiSiFFs7GQV6UN22LXaovDo4+b4GjD4hrkgJZoKD7w10F7opwwMV
	 /BHclomlO4ysjThD16VCQc+D/TVOPidQxvRHgxFBWnqbeiB/0lilYDcIR+Pv/6ez46
	 hJrw+zGOQShxP4iO15+jzy+bzsW3ec8/0vCPoiWtVRnrZ+xUr9aoUoMWjuUnZPkinz
	 5+hC/8wVtsCsrXnwxVOL6AF2YQ0LLzYbepVqXhsn25ar4DZaH/Ap1k7/acjGeAX5Ww
	 TDeGL+TYYQsQqLs5elMUulSB/Kdcd/eUXJK17bTVW/W9iiGGSK8hXQD49x0aR8Lbd5
	 pLo6xV4Cc8ASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E45C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170397169637.30601.13800999655532625472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa6d0745a3d97635aaf1c20640e6bf94363f84b425293a2d0e2f5aba4817ad3
Date: Sat, 30 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703971696
