Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFAD801
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D02C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673673087;
	bh=1rWfunMI9235WuzTSinuDX33wn5fs08IknpzEO6WCU0=;
	h=To:Subject:From:Date:From;
	b=PFaZl/kuYP4CwIyNU88j3g+Namc6ebuE7DXotpMoLKTszM01yQOWgcgXs9zW7LUhu
	 oXYdlrBvCAsYFLHLw6GvhqwkOs80j+P1uIsDIJkawy/tpQbHqXM7XwhxzWStUWdpvm
	 MJQ5OV3hb/VtiRHfuQy8zxyi1UMJhBT7gP9NKPoXueTqzkkSwxpRU7SHHJZGG9UPWy
	 JlnXN3C0wpleJ1GT0z5n1COCqpB0Ud4Lx/y+5uVXqPwOWzl3n41e9nvuGsClNmZuFl
	 sskyylk2hSC6OO3BwJ99g6Y64/AYmHKTENBbNUuIIVpAF5wzIX6MN0Kll+pvoeC4fM
	 9SicQgKwwof9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF29C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367308743.28937.11108016893366520267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773ed1c4eb018cc6bac85bd3f83bc098314c21f110e57a22f4b3d10797ee7e1a
Date: Sat, 14 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673673087
