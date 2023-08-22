Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666711D2E6
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D85C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692717848;
	bh=Bkb+14j/qtarKv1RYym40KKXnovxp91lKFijbcZiwGM=;
	h=To:Subject:From:Date:From;
	b=XRQrdswiGmQWFiI4EuXhh+R3QGWtpJZyhpVvFsAPCM9awe5tciyQwktqIfCbw3Wje
	 GjFiGhMfnuR3UvwfPyR95Xn7ubBedp3qywwLO9yDYcI1vhQR3QFgxoL7yTEbkt07qv
	 r4PgWdUJV95+yQ+5u7R1uxaOjTm5SAsSPg0MAti1Ewg4+iCV0GSSg6B7yqX3IgQ7qT
	 r0vq3gOqa+0Nkcl8FW9pP9E52crtGZTHnbbyINL3hEg/UC/whSAlsIaTK0vcr6Zhqo
	 kT2ldtGZpG206Eu5oqn71KuyMeX5qOrIfdL6zKaTc1E6uc+S0PeO5CexSqADnm33L+
	 oyiHt3sSwEqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A6AEE49A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 15:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169271784873.5940.17073361336498875137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc07730bf5fa285bb70d9e7e962f3a7fbb3c97d867fcb14f7f3a107e7a78de4
Date: Tue, 22 Aug 2023 15:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692717848
