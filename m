Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE9418AE5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB690C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692718448;
	bh=NV5k/ZN2/pnFb0BTS/bXAF8qsc0+DSx3e9EYh2z7noo=;
	h=To:Subject:From:Date:From;
	b=V9AFA6gwI7Ro2zbRbDdHC2btvge/RX19n4ucK4uVE/m923RsHz1W32GSAPLdqVkRL
	 973/aVtDPSTrq+SolLRPCZD7KAREt+JJQxT1px/gs+MVy/xz0QFtmDymzpAwkR8Xnc
	 EQvE0XNpR8hW9Ahfq4D6dOU9wlh71cJ4yEl7qz8M03mGHyYFbQwgIhIgLiaixSKhmH
	 U3NZYxGuGT3BY+piBfjqHepmtCWRZcbs0w4jTHASi2JzYA8jnHiSDSlVyYxOtgyWko
	 cu2H3IY/tFsvqkfivVh6HvS4AoaCalV1py9+BYJ7SNByzBfEKYkmeXhgRnoxTwktrX
	 dSQ070C2KA85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE25EE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169271844869.14995.8691855597964579937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aed94025cfa93f35243fab2217a1417a96b16e6e3650a531a661b67accb9213
Date: Tue, 22 Aug 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692718448
