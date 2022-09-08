Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA077C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A959C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662600653;
	bh=PRSchlKqNnhukackeIH7JQv/8j+dIP1WV/7AhgGDY2Q=;
	h=To:Subject:From:Date:From;
	b=pmRbpRU6L2guCNJXwEUYZCzJyVS3B3/h9jP1qIOPpktGVHM32DqjB10TjxzmsEnS+
	 MwMCvTCXxpT4VAbqVbs9/Chjhu0CXWZbVdOtwIF1f8UnhEhmOlQ+eu5M0iyVPx2tXA
	 szTAkpb2LMfDGNWo3TUObQr8rbYTyLJEPxKhc/73FzC+7qdA8NNgB4gY6/FV7YHrVn
	 w8pBZtH074fU7Jtimas2MCvqkcz4+JZ2+NBWcFwf4zd1T7f3opHM57j8HLbDrA9xJD
	 U+recQsRtZ5zMZlFuu7B38sGBFZOW+nPAkqIsgnYKs2RjV6mVJTTfMYHb6JHeL7n2U
	 tgTWi1Qd+tgxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD6AC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260065333.24828.15179445782874945806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3085f94bdf8aca3ff352ba1cb8c24d5459926ca224537e60fd1c4ea219ec32c8
Date: Thu, 08 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662600653
