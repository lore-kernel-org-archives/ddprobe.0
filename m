Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC317E
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXzj0+v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90872C433C9
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698981496;
	bh=Jfr9O516H2PkNENb6b9lB6k0sYs9TH8HRmFNtxjHaug=;
	h=To:Subject:From:Date:From;
	b=rXzj0+v89PpI0dAukBn0IZsApgMhTNytt0KncNM0K9fDWdHkhKo3x2rK6FlVCOLqG
	 uwOojZNlNV/kysTjv9pmxW8guSSylUWE4vKEogoq49aVHxb9Kc1M1FCBwKgIvvnekq
	 910CH+dDMae98qpCT4YKo7pLrtNA+uDmh+FiTk26Hb7jExTC9NTk7EuOi2GApkexDA
	 wKqa91Y11r3eykYnh5oNBdxWRW88hOAAo5ZSovt6UwChVdvVlGIhpBKnkZYq6X+zbp
	 5tnoO+LE5I7dMFwI5B6dKno2aRQ5Jg9elwWeJMHJrAPOpMO3fiKjGTu+wPK9LbAWmg
	 VxFj2zc/G8g/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E43C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169898149642.28360.7812204843394283215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eed0a053a82a1c44d296ac91e75f207f8167a9c5290eb1022ef282b0456f77e
Date: Fri, 03 Nov 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698981496
